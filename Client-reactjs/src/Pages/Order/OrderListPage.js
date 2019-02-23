import React, { Component } from 'react';
import OrderList from '../../components/OrderList/OrderList';
import OrderItem from '../../components/OrderItem/OrderItem';
import { getAllOrder, deleteOrder, getOneOrder } from '../../util/APIUtils';
import Search from '../../components/Search';
import './OrderListPage.css'

class OrderListPage extends Component {

    constructor(props) {
        super(props);
        this.state = {
            orders: [],
            currentPage: 1,
            ordersPerPage: 5,
            keyword: '',
            items: []
        };
    }

    componentDidMount() {
        getAllOrder()
            .then(res => {
                console.log(res);
                this.setState({
                    orders: res,
                });
            }).catch(err => {
                console.log(err);
            })
    }

    onDelete = (id) => {
        var { orders } = this.state;
        deleteOrder(id).then(res => {

            console.log(res);
            if (res.deleted) {
                var index = this.findIndex(orders, id);
                if (index !== -1) {
                    orders.splice(index, 1);
                    this.setState({
                        orders: orders
                    });
                }
            }

        });
    }

    findIndex = (orders, id) => {
        var result = -1;
        orders.forEach((order, index) => {
            if (order.id === id) {
                result = index;
            }
        });
        return result;
    }

    handleClick = (event) => {
        this.setState({
            currentPage: Number(event.target.id)
        });
    }

    dateCompare(key) {
        return function (a, b) {
            var aa = a[key].split('/').reverse().join(),
                bb = b[key].split('/').reverse().join();
            return aa < bb ? -1 : (aa > bb ? 1 : 0);
        }
    }
    dateSort = (key) => {
        const { orders } = this.state;
        orders.sort(this.dateCompare(key));
        this.setState({
            orders: orders
        });
    }

    compareBy(key) {
        return function (a, b) {
            // var x = a[key].toLowerCase();
            // var y = b[key].toLowerCase();
            // if (x < y) return -1;
            // if (x > y) return 1;
            // return 0;
            if (a[key] < b[key]) return -1;
            if (a[key] > b[key]) return 1;
            return 0;
        };
    }
    onSort = (key) => {
        //let {data}= this.state ;
        const { orders } = this.state;
        //console.log(data);
        orders.sort(this.compareBy(key));
        this.setState({
            orders: orders
        });
    }
    onFilter = (keyword) => {
        this.setState({
            keyword: keyword.toLowerCase()
        })
    }

    render() {
        //var { products } = this.props;
        console.log(this.state);
        const { currentPage, ordersPerPage, keyword } = this.state;
        var newOrders = this.state.orders;
        const indexOfLastOrder = currentPage * ordersPerPage;
        const indexOfFirstOrder = indexOfLastOrder - ordersPerPage;
        var currentOrders = newOrders.slice(indexOfFirstOrder, indexOfLastOrder);
        console.log(currentOrders);
        if (keyword) {
            currentOrders = currentOrders.filter((currentOrders) => {
                return currentOrders.name.toLowerCase().indexOf(keyword) !== -1 ||
                    currentOrders.address.toLowerCase().indexOf(keyword) !== -1 ||
                    currentOrders.phone.toLowerCase().indexOf(keyword) !== -1 ||
                    (currentOrders.id).toString().toLowerCase().indexOf(keyword) !== -1 ||
                    currentOrders.dateCreated.toLowerCase().indexOf(keyword) !== -1 ||
                    (currentOrders.totalPrice).toString().toLowerCase().indexOf(keyword) !== -1;

            })
        }


        const pageNumbers = [];
        for (let i = 1; i <= Math.ceil(newOrders.length / ordersPerPage); i++) {
            pageNumbers.push(i);
        }
        const renderPageNumbers = pageNumbers.map(number => {
            return (
                <li
                    key={number}
                    id={number}
                    onClick={this.handleClick}
                >
                    {number}
                </li>
            );
        });

        return (
            <div>
                <div className="col-xs-12 col-sm-12 col-md-12 col-lg-12 mt-100 ml">
                    <Search onFilter={this.onFilter} />
                    <OrderList>
                        {this.showProducts(currentOrders)}
                        {this.onSort}
                        {this.dateSort}
                    </OrderList>

                </div>

                <ul id="page-numbers">
                    {renderPageNumbers}
                </ul>
            </div>
        );
    }

    showProducts(currentOrders) {
        var result = null;
        if (currentOrders.length > 0) {
            result = currentOrders.map((order, index) => {
                return (
                    <OrderItem
                        key={index}
                        order={order}
                        index={index}
                        onDelete={this.onDelete}
                    />
                );
            });
        }
        return result;
    }
}

export default OrderListPage;

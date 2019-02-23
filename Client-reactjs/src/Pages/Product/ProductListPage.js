import React, { Component } from 'react';
import ProductList from '../../components/ProductList/ProductList';
import ProductItem from '../../components/ProductItem/ProductItem';
import { Link } from 'react-router-dom';
import { getAllProduct, deleteProduct } from '../../util/APIUtils';
import Search from '../../components/Search'
import './ProductListPage.css';
class ProductListPage extends Component {

    constructor(props) {
        super(props);
        this.state = {
            products: [],
            currentPage: 1,
            productPerPage: 5,
            keyword : ''
        };
    }

    handleClick = (event) => {
        this.setState({
            currentPage: Number(event.target.id)
        });
    }

    componentDidMount() {
        getAllProduct()
            .then(res => {
                console.log(res);
                this.setState({
                    products: res
                });
            }).catch(err => {
                console.log(err);
            })
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
        const { products } = this.state;
        //console.log(data);
        products.sort(this.compareBy(key));
        this.setState({
            products: products
        });
    }

    onFilter = (keyword) => {
        this.setState({
            keyword: keyword.toLowerCase()
        })
    }

    onDelete = (id) => {
        var { products } = this.state;
        const idRequets = id;
        console.log(idRequets)
        deleteProduct(idRequets).then(res => {
            console.log(res.deleted);
            
            if (res.deleted) {
                var index = this.findIndex(products, id);
                if (index !== -1) {
                    products.splice(index, 1);
                    this.setState({
                        products: products
                    });
                }
            }
        });
    }

    findIndex = (products, id) => {
        var result = -1;
        products.forEach((product, index) => {
            if (product.id === id) {
                result = index;
            }
        });
        return result;
    }

    render() {
        const { currentPage, productPerPage, keyword } = this.state;
        var newProducts = this.state.products;
        const indexOfLastOrder = currentPage * productPerPage;
        const indexOfFirstOrder = indexOfLastOrder - productPerPage;
        var currentProducts = newProducts.slice(indexOfFirstOrder, indexOfLastOrder);
        if (keyword) {
            currentProducts = currentProducts.filter((currentProducts) => {
                console.log(typeof currentProducts.price);
                
                return currentProducts.name.toLowerCase().indexOf(keyword) !== -1 ||
                      (currentProducts.price).toString().toLowerCase().indexOf(keyword) !== -1 ||
                     (currentProducts.id).toString().toLowerCase().indexOf(keyword) !== -1 ||
                     (currentProducts.quantity).toString().toLowerCase().indexOf(keyword) !== -1 ||
                     currentProducts.type.toString().toLowerCase().indexOf(keyword) !== -1 ||
                     currentProducts.createdBy.toString().toLowerCase().indexOf(keyword) !== -1 ;
            })
        }
        const pageNumbers = [];
        for (let i = 1; i <= Math.ceil(newProducts.length / productPerPage); i++) {
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
                <div className="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <Link to="/product/add" className="btn btn-info mt-100">
                        Add Product
                </Link> <br/>
                <br/>
                <Search onFilter={this.onFilter} />
                    <ProductList>
                        {this.showProducts(currentProducts)}
                        {this.onSort}
                    </ProductList>
                </div>
                <ul id="page-numbers">
                    {renderPageNumbers}
                </ul>
            </div>
        );
    }

    showProducts(products) {
        var result = null;
        if (products.length > 0) {
            result = products.map((product, index) => {
                return (
                    <ProductItem
                        key={index}
                        product={product}
                        index={index}
                        onDelete={this.onDelete}
                    />
                );
            });
        }
        return result;
    }
}

export default ProductListPage;

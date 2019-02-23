import React, { Component } from 'react';
import { Link } from 'react-router-dom';
import UserList from '../../components/UserList/UserList';
import UserItem from '../../components/UserItem/UserItem';
import { getAllUser, deleteUser } from '../../util/APIUtils';
import Search from '../../components/Search';

class UserListPage extends Component {

    constructor(props) {
        super(props);
        this.state = {
            users: [],
            currentPage: 1,
            ordersPerPage: 5,
            keyword: ''
        };
    }

    handleClick = (event) => {
        this.setState({
            currentPage: Number(event.target.id)
        });
    }

    componentDidMount() {
        getAllUser()
            .then(res => {
                console.log(res);
                this.setState({
                    users: res
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
        const { users } = this.state;
        //console.log(data);
        users.sort(this.compareBy(key));
        this.setState({
            users: users
        });
    }

    onFilter = (keyword) => {
        this.setState({
            keyword: keyword.toLowerCase()
        })
    }

    onDelete = (id) => {
        var { users } = this.state;
        const idRequets = id;
        console.log(idRequets)
        deleteUser(idRequets).then(res => {
            if (res.deleted) {
                var index = this.findIndex(users, id);
                if (index !== -1) {
                    users.splice(index, 1);
                    this.setState({
                        users: users
                    });
                }
            }
        });
    }

    findIndex = (users, id) => {
        var result = -1;
        users.forEach((user, index) => {
            if (user.id === id) {
                result = index;
            }
        });
        return result;
    }

    render() {
        //var { products } = this.props;
        //var { users } = this.state;
        console.log(this.state);
        const { currentPage, ordersPerPage, keyword } = this.state;
        var newUsers = this.state.users;
        // console.log(newOrders)
        const indexOfLastOrder = currentPage * ordersPerPage;
        const indexOfFirstOrder = indexOfLastOrder - ordersPerPage;
        var currentUser = newUsers.slice(indexOfFirstOrder, indexOfLastOrder);

        if (keyword) {
            currentUser = currentUser.filter((currentUser) => {
                let roleNames = currentUser.roles.map(e => { return e.name });
                let role = JSON.stringify(roleNames)
                // console.log(typeof role)
                // console.log(role);
                
                return currentUser.name.toLowerCase().indexOf(keyword) !== -1 ||
                    currentUser.username.toString().toLowerCase().indexOf(keyword) !== -1 ||
                    role.toLowerCase().indexOf(keyword) !== -1 ||
                    (currentUser.id).toString().toLowerCase().indexOf(keyword) !== -1 ||
                    currentUser.email.toString().toLowerCase().indexOf(keyword) !== -1;
            })
        }
        const pageNumbers = [];
        for (let i = 1; i <= Math.ceil(newUsers.length / ordersPerPage); i++) {
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
                    <Link to="/user/add" className="btn btn-info mt-100">
                        Add User
                </Link><br />
                    <br />
                    <Search onFilter={this.onFilter} />
                    <UserList>
                        {this.showUsers(currentUser)}
                        {this.onSort}
                    </UserList>
                </div>
                <ul id="page-numbers">
                    {renderPageNumbers}
                </ul>
            </div>
        );
    }

    showUsers(users) {
        var result = null;
        if (users.length > 0) {
            result = users.map((user, index) => {
                return (
                    <UserItem
                        key={index}
                        user={user}
                        index={index}
                        onDelete={this.onDelete}
                    />
                );
            });
        }
        return result;
    }
}

export default UserListPage;

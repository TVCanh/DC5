import React, { Component } from 'react';
import './OrderList.css'

class OrderList extends Component {

    onSort = (key) =>{
        //console.log(this.props.children[1])
        this.props.children[1](key)
    }

    dateSort = (key) => {
        this.props.children[2](key) ;
    }

    render() {
         console.log(this.props.children)
         
        return (
            <div className="panel panel-primar " >
                <div className="panel-heading">
                    <h1 className="panel-title " align="center"><strong>Order List</strong></h1>
                </div>
                <div className="panel-body">
                    <table className="table table-bordered table-hover">
                        <thead className="thead">
                            <tr>
                                <th onClick={() => this.onSort('id')}>ID</th>
                                <th onClick={() => this.onSort('name')}>Name</th>
                                <th onClick={() => this.onSort('address')}>Address</th>
                                <th onClick={() => this.onSort('phone')}>Phone Number</th>
                                <th onClick={() => this.dateSort('dateCreated')}>Date Created</th>
                                <th onClick={() => this.onSort('totalPrice')}>Total Amount</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            {this.props.children}
                        </tbody>
                    </table>
                </div>
            </div>

        );
    }
}

export default OrderList;

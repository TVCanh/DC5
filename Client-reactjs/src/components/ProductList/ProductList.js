import React, { Component } from 'react';
import './ProductList.css';

class ProductList extends Component {

    onSort = (key) =>{
        //console.log(this.props.children[1])
        this.props.children[1](key)
    }
    render() {
        
        return (
            <div className="panel panel-primar " >
                <div className="panel-heading">
                    <h3 className="panel-title " align="center">Product List</h3>
                </div>
                <div className="panel-body">
                    <table className="table table-bordered table-hover">
                        <thead className="thead">
                            <tr>
                                <th onClick={() => this.onSort('id')}>ID</th>
                                <th onClick={() => this.onSort('name')}>Name</th>
                                <th>Image</th>
                                <th onClick={() => this.onSort('price')}>Price</th>
                                <th onClick={() => this.onSort('quantity')}>Quantity</th>
                                <th onClick={() => this.onSort('type')}>Type</th>
                                <th onClick={() => this.onSort('createdBy')}>Created BY</th>
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

export default ProductList;

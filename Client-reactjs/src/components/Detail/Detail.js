import React, { Component } from 'react';
import {Link} from 'react-router-dom'

class Detail extends Component {
    render() {
        // console.log(this.props.children)
        return (
            <div className="panel panel-primar " >
                <div className="panel-heading">
                    <h1 className="panel-title " align="center"><strong>Detail Order</strong></h1>
                </div>
                <div className="panel-body">
                    <table className="table table-bordered table-hover">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Product ID</th>
                                <th>Product Name</th>
                                {/* <th>Id</th> */}
                                <th>Price (for a product)</th>
                                <th>Quantity</th>
                                <th>Total</th>
                            </tr>
                        </thead>
                        <tbody>
                            {this.props.children}
                        </tbody>
                    </table>
                   <Link to="/orders" className="btn btn-success mr-10">Back</Link>
                </div>
            </div>

        );
    }
}

export default Detail;

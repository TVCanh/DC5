import React, { Component } from 'react';


class ReceiptList extends Component {

    render() {
         
        return (
            <div className="panel panel-primar " >
                <div className="panel-heading">
                    <h1 className="panel-title " align="center"><strong>Order Detail</strong></h1>
                </div>
                <div className="panel-body">
                    <table className="table table-bordered table-hover">
                        <thead className="thead">
                            <tr>
                                <th >ID</th>
                                <th>Name</th>
                                <th>Quantity</th>
                                <th>Price</th>
                                <th>Total Price</th>
                            </tr>
                        </thead>
                        <tbody>
                            {this.props.children[0]}
                        </tbody>
                    </table>
                    <strong>TOTAL AMOUNT: {this.props.children[1]}</strong>
                </div>
            </div>

        );
    }
}

export default ReceiptList;

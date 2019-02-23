import React, { Component } from 'react';
import { Link } from 'react-router-dom';

class ReceiptItem extends Component {


    render() {
        var { order, index } = this.props;
        return ( 
            <tr>
                <td>{order.product.id}</td>
                <td>{order.product.name}</td>
                <td>{order.quantity}</td>
                <td>{order.product.price}</td>
                <td>{this.showTotalPrice(order.quantity,order.product.price)}</td>
            </tr>
        );
    }
    showTotalPrice = (quantity,price) =>{
        return quantity * price
    }
}

export default ReceiptItem;

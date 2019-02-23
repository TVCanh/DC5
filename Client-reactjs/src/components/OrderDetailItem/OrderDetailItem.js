import React, { Component } from 'react';

class OrderDetailItem extends Component {

    render() {
        var { item, index,  } = this.props;
        console.log(item)
        return (
            <tr>
                <td>{index + 1}</td>
                {/* <td>{item.id}</td> */}
                <td>{item.product.id}</td>
                <td>{item.product.name}</td>
                <td>{item.product.price}</td>
                <td>{item.quantity}</td>
                <td>{this.showSubTotal(item.product.price,item.quantity)}</td>
            </tr>
        );
    }
    showSubTotal = (price, quantity) => {
        return price * quantity;
    }
}

export default OrderDetailItem;

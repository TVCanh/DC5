import React, { Component } from 'react';
import { Link } from 'react-router-dom';

class OrderItem extends Component {


    onDelete = (id) => {
        console.log(id);
        if (confirm('Are you sure delete this Order?')) { //eslint-disable-line
            this.props.onDelete(id);
            alert("Deleted successfully")
        }
    }

    render() {
        var { order, index } = this.props;
        // console.log(order.id)
        return (
            <tr>
                <td>{order.id}</td>
                <td>{order.name}</td>
                <td>{order.address}</td>
                <td>{order.phone}</td>
                <td>{order.dateCreated}</td>
                <td>{order.totalPrice}</td>
                <td>
                    <Link
                        to={`/order/${order.id}/detail`}
                        className="btn btn-success mr-10"
                    >
                        Detail
                    </Link>
                    <button
                        type="button"
                        className="btn btn-danger"
                        onClick={() => this.onDelete(order.id)}
                    >
                        Deleted
                    </button>
                </td>
            </tr>
        );
    }
}

export default OrderItem;

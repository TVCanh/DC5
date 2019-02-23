import React, { Component } from 'react';
import * as Message from '../constants/Message';
import {Link} from 'react-router-dom'

class CartItem extends Component {

    render() {
        var { item } = this.props;
        var { quantity } = item;
        return (
            <tr>
                <td>
                    <h5>
                        <strong>{item.product.name}</strong>
                    </h5>
                </td>
                <th scope="row">
                    <div className="col-xs-3 col-sm-3 col-md-3 col-lg-3 ">
                        <Link to={`/detail/${item.product.id}`} >
                            <div className="thumbnail">
                                <img src={`http://localhost/uploads/product-images/${item.product.id}/${item.product.id}` + '.jpg'} />
                            </div>
                        </Link>
                    </div>
                </th>
                <td>{item.product.price} $</td>
                <td className="center-on-small-only">
                    <span className="qty">{quantity} </span>
                    <div className="btn-group radio-group" data-toggle="buttons">
                        <label
                            onClick={() => this.onUpdateQuantity(item.product, item.quantity - 1)}
                        >
                            <button type="button" className="btn btn-danger">-</button>
                        </label>
                        <label
                            onClick={() => this.onUpdateQuantity(item.product, item.quantity + 1)}
                        >
                            <button type="button" className="btn btn-info">+</button>
                        </label>
                    </div>
                </td>
                <td>{this.showSubTotal(item.product.price, item.quantity)}$</td>
                <td>
                    <button type="button"
                        className="btn btn-sm btn-primary waves-effect waves-light"
                        data-toggle="tooltip"
                        data-placement="top"
                        title=""
                        data-original-title="Remove item"
                        onClick={() => this.onDelete(item.product)}
                    >
                        X
            </button>
                </td>
            </tr>
        );
    }
    showSubTotal = (price, quantity) => {
        return price * quantity;
    }

    onDelete = (product) => {
        var { onDeleteProductInCart, onChangeMessage } = this.props;
        if (confirm('Are you sure delete this Product?')) { //eslint-disable-line
            onDeleteProductInCart(product);
        }
        onChangeMessage(Message.MSG_DELETE_PRODUCT_IN_CART_SUCCESS);
    }

    onUpdateQuantity = (product, quantity) => {
        var { onUpdateProductInCart, onChangeMessage } = this.props;
        if (quantity > 0) {
            onUpdateProductInCart(product, quantity);
            onChangeMessage(Message.MSG_UPDATE_CART_SUCCESS);
        }
    }
}

export default CartItem;

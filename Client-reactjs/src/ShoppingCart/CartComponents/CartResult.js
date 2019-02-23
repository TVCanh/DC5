import React, { Component } from 'react';
import {Link} from 'react-router-dom'

class CartResult extends Component {
  render() {
    var { cart } = this.props;
    return (
      <tr>
        <td colSpan="3"></td>
        <td>
          <h4>
            <strong>Total Amount</strong>
          </h4>
        </td>
        <td>
          <h4>
            <strong>{this.showTotalAmount(cart)}$</strong>
          </h4>
        </td>
        <td colSpan="3">
          <Link to="/checkout"><button type="button" className="btn btn-primary waves-effect waves-light">Purchase
             {/* <i className="fa fa-angle-right right"></i> */}
          </button>
          </Link>
        </td>
      </tr>
    );
  }
  showTotalAmount = (cart) => {
    var total = 0;
    if (cart.length > 0) {
      for (var i = 0; i < cart.length; i++) {
        total += cart[i].product.price * cart[i].quantity;
      }
    }
    localStorage.setItem('total',total);
    return total
  }
}

export default CartResult;

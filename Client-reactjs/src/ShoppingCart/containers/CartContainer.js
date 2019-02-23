import React, { Component } from 'react';
import { connect } from 'react-redux';
import PropTypes from 'prop-types';
import Cart from '../CartComponents/Cart';
import * as Message from '../constants/Message';
import CartResult from '../CartComponents/CartResult';
import CartItem from '../CartComponents/CartItem'
import { actionDeleteProductInCart, actionChangeMessage, actionUpdateProductInCart } from '../actions/index';

class CartContainer extends Component {
  render() {
    var { cart } = this.props;
    //console.log(cart);
    return (
      <Cart>
        {this.showCartItem(cart)}
        {this.showTotalAmount(cart)}
      </Cart>

    );
  }

  showCartItem = (cart => {
    var { onDeleteProductInCart, onChangeMessage, onUpdateProductInCart } = this.props;
    var result = <tr>
      <td> {Message.MSG_CART_EMPTY} </td>
    </tr>;
    if (cart.length > 0) {
      result = cart.map((item, index) => {
        return (
          <CartItem
            key={index}
            item={item}
            index={index}
            onDeleteProductInCart={onDeleteProductInCart}
            onChangeMessage={onChangeMessage}
            onUpdateProductInCart={onUpdateProductInCart}
          />
        );
      });
    }
    return result;
  })

  showTotalAmount = (cart) => {
    var result = null;
    if (cart.length > 0) {
      result = <CartResult cart={cart} />
    }
    return result
  }
}
CartContainer.propTypes = {
  cart: PropTypes.arrayOf(PropTypes.shape({
    product: PropTypes.shape({
      id: PropTypes.number.isRequired,
      name: PropTypes.string.isRequired,
     // image: PropTypes.string.isRequired,
     // description: PropTypes.string.isRequired,
      price: PropTypes.number.isRequired,
      quantity: PropTypes.number.isRequired
    }).isRequired,
    quantity: PropTypes.number.isRequired
  })).isRequired
}

const mapStateToProps = state => {
  return {
    cart: state.cart
  }
}

const mapDispatchToProps = (dispatch, props) => {
  return {
    onDeleteProductInCart: (product) => {
      dispatch(actionDeleteProductInCart(product));
    },
    onChangeMessage: (message) => {
      dispatch(actionChangeMessage(message));
    },
    onUpdateProductInCart: (product, quantity) => {
      dispatch(actionUpdateProductInCart(product, quantity));
    }
  }
}

export default connect(mapStateToProps, mapDispatchToProps)(CartContainer);

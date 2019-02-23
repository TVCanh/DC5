import React, { Component } from 'react';
import './Home.css';
import ProductContainer from '../ShoppingCart/containers/ProductContainer';
import MessageContainer from '../ShoppingCart/containers/MessageContainer';
import CartContainer from '../ShoppingCart/containers/CartContainer';

class Home extends Component {
  render() {
    return (
      <div>
        <main id="mainContainer">
          <div className="container">
              
            <ProductContainer />
            <MessageContainer />
            <CartContainer />
          </div>
        </main>

      </div>

    );
  }
}

export default Home;

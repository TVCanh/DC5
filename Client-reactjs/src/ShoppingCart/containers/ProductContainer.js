import React, { Component } from 'react';
import { connect } from 'react-redux';
import HomeProducts from '../CartComponents/HomeProducts';
import Product from '../CartComponents/Product';
import PropTypes from 'prop-types';
import { actionAddToCart, actionChangeMessage } from '../actions/index';
import { actFetchProductsRequest } from './../actions/index';

class ProductContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      currentPage: 1,
      productPerPage: 6
    }
  }
  componentDidMount() {
    this.props.fetchAllProducts();
    console.log(this.props);

  }

  handleClick = (event) => {
    this.setState({
      currentPage: Number(event.target.id)
    });
  }

  render() {
    var { products } = this.props;
    const { currentPage, productPerPage } = this.state;
    const indexOfLastProduct = currentPage * productPerPage;
    const indexOfFirstProduct = indexOfLastProduct - productPerPage;
    var currentProducts = products.slice(indexOfFirstProduct, indexOfLastProduct);
    console.log(products);
    console.log(this.props.products);

    const pageNumbers = [];
    for (let i = 1; i <= Math.ceil(products.length / productPerPage); i++) {
      pageNumbers.push(i);
    }
    const renderPageNumbers = pageNumbers.map(number => {
      return (
        <li
          key={number}
          id={number}
          onClick={this.handleClick}
        >
          {number}
        </li>
      );
    });
    return (
      <div>
        
          <HomeProducts >
            {this.showProducts(currentProducts)}
          </HomeProducts>
        
        
          <ul id="page-products-numbers">
            {renderPageNumbers}
          </ul>
        
      </div>
    );
  }

  showProducts(products) {
    var result = null;
    var { onAddToCart, onChangeMessage } = this.props;
    // console.log(products);
    if (products.length > 0) {
      result = products.map((product, index) => {
        return <Product
          key={index}
          product={product}
          onAddToCart={onAddToCart}
          onChangeMessage={onChangeMessage}
        />
      });
    }
    return result;
  }
}

ProductContainer.propTypes = {
  products: PropTypes.arrayOf(
    PropTypes.shape({
      id: PropTypes.number.isRequired,
      name: PropTypes.string.isRequired,
      //image: PropTypes.string.isRequired,
      // description: PropTypes.string.isRequired,
      price: PropTypes.number.isRequired,
      quantity: PropTypes.number.isRequired
    })
  ).isRequired,
  onChangeMessage: PropTypes.func.isRequired
}

const mapStateToProps = state => {
  return {
    products: state.products
  }

}

const mapDispatchToProps = (dispatch, props) => {
  return {
    onAddToCart: (product) => {
      dispatch(actionAddToCart(product, 1));
    },
    onChangeMessage: (message) => {
      dispatch(actionChangeMessage(message));
    },
    fetchAllProducts: () => {
      dispatch(actFetchProductsRequest());
    }
  }
}



export default connect(mapStateToProps, mapDispatchToProps)(ProductContainer);


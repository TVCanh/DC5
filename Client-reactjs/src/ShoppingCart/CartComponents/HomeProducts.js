import React, { Component } from 'react';
import '../../components/Signin.css'
class HomeProducts extends Component {
  render() {
    return (
      <section className="section">
        <div className="row">
          {this.props.children}
        </div>
      </section>

    );
  }
}

// const mapStateToProps = state =>{
//   return {
//       products : state.products
//   }

// }

export default HomeProducts;

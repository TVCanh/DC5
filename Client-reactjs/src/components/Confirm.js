import React, { Component } from 'react';
import { NavLink } from 'react-router-dom';
import { confirm } from '../util/APIUtils';
class Confirm extends Component {
  render() {
    var { match } = this.props;
    var confirmToken = match.params.confirmToken;
    console.log(confirmToken);
    confirm(confirmToken)
      .then(res => {
        console.log(res);
      }).catch(err => {
        console.log(err);
      })
    return (
      <div className="col-lg-4 col-md-6 mt-100">
        <h1> Congaratlation! Your acoount is active</h1>
         <center><h4><NavLink to="/signin">Login now </NavLink></h4></center>
      </div>

    );
  }
}

export default Confirm;

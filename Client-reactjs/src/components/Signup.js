import React, { Component } from "react";
import "./Signup.css";
import { signup } from '../util/APIUtils';
import { NavLink } from 'react-router-dom';
//import { signup, checkUsernameAvailability, checkEmailAvailability } from '../util/APIUtils';
const emailRegex = RegExp(
  /^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/
);

const formValid = ({ formErrors, ...rest }) => {
  let valid = true;

  // validate form errors being empty
  Object.values(formErrors).forEach(val => {
    val.length > 0 && (valid = false);
  });

  // validate the form was filled out
  Object.values(rest).forEach(val => {
    val === null && (valid = false);
  });

  return valid;
};

class App extends Component {
  constructor(props) {
    super(props);

    this.state = {
      name: null,
      username: null,
      email: null,
      password: null,
      rePassword: null,
      formErrors: {
        name: "",
        username: "",
        email: "",
        password: ""
      }
    };

  }


  handleChange = e => {
    e.preventDefault();
    const { name, value } = e.target;
    let formErrors = { ...this.state.formErrors };

    switch (name) {
      case "name":
        formErrors.name =
          value.length < 6 ? "minimum 6 characaters required" : "";
        break;
      case "username":
        formErrors.username =
          value.length < 6 ? "minimum 6 characaters required" : "";
        break;
      case "email":
        formErrors.email = emailRegex.test(value)
          ? ""
          : "invalid email address";
        break;
      case "password":
        formErrors.password =
          value.length < 6 ? "minimum 6 characaters required" : "";
        break;
      default:
        break;
    }

    this.setState({ formErrors, [name]: value });

  };

  handleSubmit = e => {
    console.log(this.state);
    e.preventDefault();

    if (!formValid(this.state)) {
      alert("Please type full information! ");

    } else if (this.state.password !== this.state.rePassword) {
      alert("Password don't match !")
    } else {
      //console.error("FORM INVALID - DISPLAY ERROR MESSAGE");

      const signupRequest = {
        name: this.state.name,
        username: this.state.username,
        email: this.state.email,
        password: this.state.password
      };
      //console.log(signupRequest);
      var test = signup(signupRequest);
      if (test) {
        alert("Register successfully!");
        this.props.history.push("/signin");
      } else {
        alert("Register failed!");
        this.props.history.push("/signup");
      }
    }
  };

  render() {
    const { formErrors } = this.state;

    return (
      <div className="wrapper" >
        <div className="form-wrapper">
          <h1>Create Account</h1>
          <form onSubmit={this.handleSubmit} noValidate>
            <div className="name">
              <label htmlFor="name"><strong>Name</strong></label>
              <input
                className={formErrors.name.length > 0 ? "error" : null}
                placeholder="Your Name"
                type="text"
                name="name"
                noValidate
                onChange={this.handleChange}
              />
              {formErrors.name.length > 0 && (
                <span className="errorMessage">{formErrors.name}</span>
              )}
            </div>
            <div className="username">
              <label htmlFor="username"><strong>Username</strong></label>
              <input
                className={formErrors.username.length > 0 ? "error" : null}
                placeholder="Username"
                type="text"
                name="username"
                onBlur={this.validateUsernameAvailability}
                // value={this.state.username.value} 
                noValidate
                onChange={this.handleChange}
              />
              {formErrors.username.length > 0 && (
                <span className="errorMessage">{formErrors.username}</span>
              )}
            </div>
            <div className="email">
              <label htmlFor="email"><strong>Email</strong></label>
              <input
                className={formErrors.email.length > 0 ? "error" : null}
                placeholder="Email"
                type="email"
                name="email"
                onBlur={this.validateEmailAvailability}
                noValidate
                onChange={this.handleChange}
              />
              {formErrors.email.length > 0 && (
                <span className="errorMessage">{formErrors.email}</span>
              )}
            </div>
            <div className="password">
              <label htmlFor="password"><strong>Password</strong></label>
              <input
                className={formErrors.password.length > 0 ? "error" : null}
                placeholder="Password"
                type="password"
                name="password"
                noValidate
                onChange={this.handleChange}
              />
              {formErrors.password.length > 0 && (
                <span className="errorMessage">{formErrors.password}</span>
              )}
            </div>
            <div className="form-group">
              <label><strong><strong>Retype Password</strong></strong></label>
              <input
                type="password"
                className="form-control"
                placeholder="Retype Password"
                name="rePassword"
                onChange={this.handleChange}
              />
            </div>
            <div className="createAccount">
              <button type="submit">Create Account</button>
              <small>Already Have an Account?</small>
              <NavLink to="/signin">Login Now</NavLink>
            </div>
          </form>
        </div>
      </div>
    );

  }

}

export default App;



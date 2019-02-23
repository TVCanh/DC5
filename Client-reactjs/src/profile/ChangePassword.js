import React, { Component } from 'react';
import{NavLink} from 'react-router-dom';
import { updatePassword } from '../util/APIUtils';

class ResetPassword extends Component {

    constructor(props) {
        super(props);
        this.state = {
            password: {
                value: '',
            },
            rePassword: {
                value: ''
            }
        }
    };

    onHandleChange = (e) => {
        const target = e.target;
        const inputName = target.name;
        const inputValue = target.value;

        this.setState({
            [inputName]: {
                value: inputValue,
            }
        });
        console.log(this.state);
    }
    handleSubmit = (e) => {
        e.preventDefault();
        const password = {
            password: this.state.password.value
        };
        if (this.state.password.value !== this.state.rePassword.value) {
            alert("Passwords don't match");
        } else if (this.state.password.value === '') {
            alert("You do not type new password!")
        } else {
            updatePassword(password)
                .then(res => {
                    console.log(res);
                }).catch(err => {
                    console.log(err);
                })
            alert("Your password has been changed ")
            this.props.history.goBack();
        }
    }
    render() {
        var role = localStorage.getItem('role');
        return (
            <div className="wrapper">
                <form className="form-wrapper" onSubmit={this.handleSubmit}>
                    <h1>Change Password</h1>
                    <div className="form-group">
                        <label><strong>New Password</strong></label>
                        <input
                            type="password"
                            className="form-control"
                            placeholder="Your new password"
                            name="password"
                            onChange={this.onHandleChange}
                        />
                    </div>
                    <div className="form-group">
                        <label><strong>Retype Password</strong></label>
                        <input
                            type="password"
                            className="form-control"
                            placeholder="Retype Password"
                            name="rePassword"
                            onChange={this.onHandleChange}
                        />
                    </div>

                    <button type="submit" className="btn btn-primary">Save</button><br />
                    {
                                    role==='ROLE_NORMAL' ?(
                                        <NavLink to="/" className="btn btn-danger">Back</NavLink>
                                    ):  <NavLink to="/products" className="btn btn-danger">Back</NavLink>
                                }
                </form>
            </div>

        );
    }
}


export default ResetPassword;

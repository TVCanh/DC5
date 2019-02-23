import React, { Component } from 'react';
import { forgot } from '../util/APIUtils';

class Forgot extends Component {
    constructor(props) {
        super(props);
        this.state = {
            email: {
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
    }

    handleSubmit = (e) => {
        e.preventDefault();
        const emailRequest = {
            email: this.state.email.value
        };
        console.log(emailRequest);
        if (this.state.email.value === '') {
            alert("You don't type an email address")
        } else {
            forgot(emailRequest)
                .then(res => {
                    console.log(res);
                }).catch(err => {
                    console.log(err);
                })
            alert("An email sent, please check your inbox");
            this.props.history.push("/signin");
        }

    }
    render() {
        return (
            <div className="wrapper ">
                <form className="form-wrapper" onSubmit={this.handleSubmit}>
                <h1>Forgot password</h1>
                    <div className="form-group">
                        <label><strong>Email</strong></label>
                        <input
                            type="email"
                            className="form-control"
                            placeholder="type Your email to set new password"
                            name="email"
                            onChange={this.onHandleChange}
                        />
                    </div>

                    <button type="submit" className="btn btn-primary">Send</button>
                </form>
            </div>

        );
    }
}

export default Forgot;

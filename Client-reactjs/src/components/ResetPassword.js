import React, { Component } from 'react';
import { reset } from '../util/APIUtils';

class ResetPassword extends Component {

    constructor(props) {
        super(props);
        this.state = {
            password: {
                value: '' 
            },
            resetToken: {
                value: ''
            },
            rePassword:{
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
        let {match} = this.props;
        let token = match.params.resetToken;
        console.log(token);
        e.preventDefault();
        const password = {
            password:this.state.password.value
        };
        if (this.state.password.value !== this.state.rePassword.value) {
            alert("Passwords don't match");
        } else if(this.state.password.value === ''){
            alert("Please type a new password")
        }else {
        reset(password, token)
        .then(res =>{
            console.log(res) ;
        }).catch(err => {
            console.log(err) ;
        })
        alert("Your password has been reset, please login to continue ")
        this.props.history.push("/signin");
    }
    }
    render() {

        return (
            <div className="wrapper">
                <form className="form-wrapper" onSubmit={this.handleSubmit}>
                <h1>Reset Password</h1>
                    <div  className="form-group">
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
                    
                    <button type="submit" className="btn btn-primary">Save</button>
                </form>
            </div>

        );
    }
}


export default ResetPassword;

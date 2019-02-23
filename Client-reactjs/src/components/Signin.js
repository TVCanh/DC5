import React, { Component } from 'react';
import { NavLink } from 'react-router-dom';
import { login } from '../util/APIUtils';
import { ACCESS_TOKEN } from '../constants';
import './Signin.css';
class Signin extends Component {
	constructor(props) {
		super(props);
		this.state = {
			username: {
				value: ''
			},
			password: {
				value: ''
			},
		};
		this.onHandleChange = this.onHandleChange.bind(this);
		this.handleSubmit = this.handleSubmit.bind(this);
	}

	onHandleChange(event) {
		const target = event.target;
		const inputName = target.name;
		const inputValue = target.value;

		this.setState({
			[inputName]: {
				value: inputValue,
			}
		});
	}

	handleSubmit(event) {
		event.preventDefault();
		const loginRequest = {
			username: this.state.username.value,
			password: this.state.password.value,
		};
		//console.log(this.state);
		login(loginRequest)
			.then(response => {
				console.log(response)
				localStorage.setItem(ACCESS_TOKEN, response.token.accessToken);
				localStorage.setItem('role', response.role.roles[0].name);
				this.props.onLogin();
				alert("Congrats! Login successfully")
			}).catch(error => {
				alert("Username or password not correct...");
			})
		
	}

	render() {
		
		return (
			<div className="wrapper" >
				<div className="form-wrapper">
					<h1>Login Form</h1>
					<form onSubmit={this.handleSubmit} noValidate>

						<div className="username">
							<label htmlFor="username"><strong>Username</strong></label>
							<input
								placeholder="Username"
								type="text"
								name="username"
								onChange={this.onHandleChange}
							/>
						</div>

						<div className="password">
							<label htmlFor="password"><strong>Password</strong></label>
							<input
								placeholder="Password"
								type="password"
								name="password"
								onChange={this.onHandleChange}
							/>

						</div>
						<div className="createAccount">
							<button type="submit">Login</button>
							<NavLink to="/signup">Create account</NavLink>
							<NavLink to="/forgot">Forgot Password</NavLink> <br />
						</div>
					</form>
				</div>
			</div>
		);
	}
}

export default Signin;

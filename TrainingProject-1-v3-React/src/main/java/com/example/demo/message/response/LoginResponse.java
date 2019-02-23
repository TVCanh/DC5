package com.example.demo.message.response;

public class LoginResponse {
	private Object token;
	private Object role;
	
	public LoginResponse(Object token, Object role) {
		this.role=role;
		this.token=token;
	}

	public Object getToken() {
		return token;
	}

	public void setToken(Object token) {
		this.token = token;
	}

	public Object getRole() {
		return role;
	}

	public void setRole(Object role) {
		this.role = role;
	}
	
}

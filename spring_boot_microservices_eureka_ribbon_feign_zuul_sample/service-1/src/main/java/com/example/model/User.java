package com.example.model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class User {
	// User ID
	private Long id;

	private String userName;

	private String password;

	private String email;

	private boolean status;

	public User() {
		/*this.setUserName("nqcuong");
		this.setEmail("nqcuong@tma.com.vn");
		this.setPassword("12345678x@X");*/
	}
}

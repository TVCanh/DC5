package com.example.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
public class User {
	// User ID
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	// User name => unique
	@Column
	private String userName;

	// Hashed password
	@Column
	private String password;

	// User's email
	@Column
	private String email;

	// User' status (Active or Inactive)
	@Column
	private boolean status;

	public User() {
		this.setUserName("nqcuong");
		this.setEmail("nqcuong@tma.com.vn");
		this.setPassword("12345678x@X");
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}
}

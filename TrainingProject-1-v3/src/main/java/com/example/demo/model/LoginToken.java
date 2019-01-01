package com.example.demo.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Table
@Entity(name = "logintoken")
public class LoginToken {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO) 
	private Long id;
	
	@Column(name = "token")
	private String token;
	
	@Column (name = "createddy")
	private Long createdDay;
	
	@Column(name = "expiredday")
	private Long expiredDay ;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}

	public String getToken() {
		return token;
	}

	public void setToken(String token) {
		this.token = token;
	}

	public Long getCreatedDay() {
		return createdDay;
	}

	public void setCreatedDay(Long createdDay) {
		this.createdDay = createdDay;
	}

	public Long getExpiredDay() {
		return expiredDay;
	}

	public void setExpiredDay(Long expiredDay) {
		this.expiredDay = expiredDay;
	}
	public LoginToken() {
		
	}
	public LoginToken(String token, Long createdDay, Long expiredDay) {
		this.token = token;
		this.createdDay = createdDay;
		this.expiredDay = expiredDay;
	}
	
	  
	
}

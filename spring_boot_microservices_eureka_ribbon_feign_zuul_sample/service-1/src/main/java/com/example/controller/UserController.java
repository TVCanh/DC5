package com.example.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.intercommunication.UserClient;

@CrossOrigin(origins = "*", maxAge = 3600) // Allow all IPs access to UserController
@RestController
@RequestMapping(value = "/users") // Set prefix /users
//@HystrixCommand(fallbackMethod = "fallbackMethod")
public class UserController {
	@Autowired
	private UserClient userClient;

	/**
	 * Get all users
	 * 
	 * @return
	 */
	@GetMapping("")
	public Object getAllUsers() {
		System.out.println("============ GET USERS");
		return userClient.getUsers();
	}
}

package com.example.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import com.example.model.ApiResponse;
import com.example.model.User;
import com.example.service.UserService;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@CrossOrigin(origins = "*", maxAge = 3600) // Allow all IPs access to UserController
@RestController
@RequestMapping(value = "/users", produces = "application/json") // Set prefix /users
public class UserController extends BaseController {
	@Autowired
	private UserService userService;

	/**
	 * Get all users
	 * 
	 * @return
	 */
	@GetMapping("")
	public ApiResponse<List<User>> getAllUsers() {
		System.out.println("========== SERVICE 2");
		return new ApiResponse<>(userService.getUsers());
	}

	@PostMapping("/sign-up")
	public ApiResponse<Object> signUp(@RequestBody User user) {
		if (user != null) {
			user = userService.saveUser(user);
		} else {
			user = new User();
		}
		return new ApiResponse<>(user);
	}

}

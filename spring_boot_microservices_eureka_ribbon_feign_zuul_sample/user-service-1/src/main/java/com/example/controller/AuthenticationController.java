package com.example.controller;

import com.example.configuration.JwtTokenUtil;
import com.example.model.*;
import com.example.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.AuthenticationException;
import org.springframework.web.bind.annotation.*;

@CrossOrigin(origins = "*", maxAge = 3600)
@RestController
@RequestMapping(value = "/auth", produces = "application/json")
public class AuthenticationController extends BaseController {

	@Autowired
	private AuthenticationManager authenticationManager;

	@Autowired
	private JwtTokenUtil jwtTokenUtil;

	@Autowired
	private UserService userService;

	@PostMapping("/login")
	public ApiResponse<AuthToken> login(@RequestBody User user) throws AuthenticationException {
		authenticationManager
				.authenticate(new UsernamePasswordAuthenticationToken(user.getUserName(), user.getPassword()));
		user = userService.findByUserName(user.getUserName());
		String token = jwtTokenUtil.generateToken(user);
		return new ApiResponse<>(new AuthToken(token, user.getUserName()));
	}
}

package com.example.demo.controller;

import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.message.request.RoleForm;
import com.example.demo.message.request.SignUpForm;
import com.example.demo.model.Role;
import com.example.demo.model.RoleName;
import com.example.demo.model.User;
import com.example.demo.respository.RoleRepository;
import com.example.demo.respository.UserRepository;
import com.example.demo.security.services.UserService;

@RestController
@RequestMapping(value = "/admin")

public class AdminControl {
	@Autowired
	UserRepository userRepository;

	@Autowired
	PasswordEncoder encoder;

	@Autowired
	RoleRepository roleRepository;

	@GetMapping(value = "/user")
	@PreAuthorize(" hasRole('ADMIN')")
	public List<User> getAllUser() {
		return userRepository.findAll();
	}

	// get an user by id
	@GetMapping(value = "/user/{id}")
	@PreAuthorize(" hasRole('ADMIN')")
	public ResponseEntity<User> getUserById(@PathVariable(value = "id") Long userID) {
		User user = userRepository.findById(userID)
				.orElseThrow(() -> new RuntimeException("Fail! -> Cause: User Id not find."));
		return ResponseEntity.ok().body(user);
	}

	@PostMapping(value = "/create/user")
	@PreAuthorize("hasRole('ADMIN')")
	public ResponseEntity<String> createUser(@Valid @RequestBody User signUpRequest) {
		if (userRepository.existsByUsername(signUpRequest.getUsername())) {
			return new ResponseEntity<String>("Fail -> Username is already taken!", HttpStatus.BAD_REQUEST);
		}
		User user = new User(signUpRequest.getName(), signUpRequest.getUsername(), signUpRequest.getEmail(),
				encoder.encode(signUpRequest.getPassword()), encoder.encode(signUpRequest.getPasswordConfirm()));
		if (signUpRequest.getPassword().equals(signUpRequest.getPasswordConfirm())) {
			if (userRepository.existsByEmail(signUpRequest.getEmail())) {
				return new ResponseEntity<String>("Fail -> Email is already in use!", HttpStatus.BAD_REQUEST);
			} else { // new user so we create user and send confirmation e-mail
						// Disable user until they click on confirmation link in email
				user.setEnabled(true);
				Set<Role> roles = new HashSet<>();
				Role userRole = roleRepository.findByName(RoleName.ROLE_NORMAL)
						.orElseThrow(() -> new RuntimeException("Fail! -> Cause: User Role not find."));
				roles.add(userRole);
				user.setRoles(roles);
				user.setPasswordConfirm(encoder.encode(signUpRequest.getPasswordConfirm()));
				userRepository.save(user);
				return ResponseEntity.ok().body("User created");
			}
		} else {
			return new ResponseEntity<String>("Fail -> Confirm password not corret!", HttpStatus.BAD_REQUEST);
		}
	}

	@DeleteMapping(value = "/delete/user/{id}")
	@PreAuthorize(" hasRole('ADMIN')")
	public Map<String, Boolean> deleteUser(@PathVariable(value = "id") Long userId) {
		User user = userRepository.findById(userId)
				.orElseThrow(() -> new RuntimeException("Fail! -> Cause: User Id not find."));

		userRepository.delete(user);
		Map<String, Boolean> response = new HashMap<>();
		response.put("deleted", Boolean.TRUE);
		return response;
	}

	@PostMapping(value = "/promote/{id}")
	@PreAuthorize(" hasRole('ADMIN')")
	public ResponseEntity<String> promoteRole(@PathVariable(value = "id") Long userId,
			@Valid @RequestBody RoleForm promote) {
		User user = userRepository.findById(userId)
				.orElseThrow(() -> new RuntimeException("Fail! -> Cause: User Id not find."));
		// if (userRepository.existsByUsername(promote.getUsername())) {

		Set<Role> roles = new HashSet<>();
		Set<String> strRoles = promote.getRole();

		strRoles.forEach(role -> {
			switch (role) {
			case "staff":
				Role staffRole = roleRepository.findByName(RoleName.ROLE_STAFF)
						.orElseThrow(() -> new RuntimeException("Fail! -> Cause: User Role not find."));
				roles.add(staffRole);
				break;
			case "supervisor":
				Role supRole = roleRepository.findByName(RoleName.ROLE_SUPERVISOR)
						.orElseThrow(() -> new RuntimeException("Fail! -> Cause: User Role not find."));
				roles.add(supRole);
				break;
			}
		});
		user.setRoles(roles);
		userRepository.save(user);
		return ResponseEntity.ok().body("Promoted succefully");
	}

	@PostMapping(value = "/disband/{id}")
	public ResponseEntity<String> disbandRole(@PathVariable(value = "id") Long userId,
			@Valid @RequestBody RoleForm disband) {
		User user = userRepository.findById(userId)
				.orElseThrow(() -> new RuntimeException("Fail! -> Cause: User Id not find."));

		Set<Role> roles = new HashSet<>();
		Set<String> strRoles = disband.getRole();

		strRoles.forEach(role -> {
			switch (role) {
			case "normal":
				Role normalRole = roleRepository.findByName(RoleName.ROLE_NORMAL)
						.orElseThrow(() -> new RuntimeException("Fail! -> Cause: User Role not find."));
				roles.add(normalRole);
				break;
			}
		});
		user.setRoles(roles);
		userRepository.save(user);

		return ResponseEntity.ok().body("Disbanded successfully");
	}
}

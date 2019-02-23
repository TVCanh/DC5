package com.example.demo.controller;

import java.util.List;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.model.User;
import com.example.demo.respository.UserRepository;
 import com.example.demo.respository.UserRepository;
@RestController
public class TestRestAPIs {
	
	@GetMapping("/api/test/normal")
	@PreAuthorize("hasRole('NORMAL') or hasRole('ADMIN') or hasRole('STAFF')")
	public String userAccess() {
		return ">>> Normal Contents!";
	}
	
	@GetMapping("/api/test/staff")
	@PreAuthorize("hasRole('STAFF') or hasRole('ADMIN') or hasRole('SUPERVISOR') ")
	public String staffAccess() {
		return ">>> Staff Contents!";
	}
	
	@GetMapping("/api/test/supervisor")
	@PreAuthorize("hasRole('SUPERVISOR') or hasRole('ADMIN')")
	public String supervisorAccess() {
		return ">>> Supervisor Contents" ;
	}
	
	@GetMapping("/api/test/admin")
	@PreAuthorize("hasRole('ADMIN')")
	public String adminAccess() {
		return ">>> Admin Contents";
	}
}

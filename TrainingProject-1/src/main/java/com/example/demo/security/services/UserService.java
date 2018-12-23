package com.example.demo.security.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.User;
import com.example.demo.respository.UserRepository;

@Service("userService")
public class UserService {
	private UserRepository userRepository ;
	
	@Autowired
	public UserService(UserRepository userRepository) {
		this.userRepository = userRepository ;
	}
	public void saveUser(User user) {
		userRepository.save(user) ;
	}
	
}

package com.example.demo.security.services;

import java.util.Optional;

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
	public Optional findUserByEmail(String email) {
		return userRepository.findUserByEmail(email);
	}
	public Optional findUserByResetToken(String resetToken) {
		return userRepository.findUserByResetToken(resetToken);
	}
	
}

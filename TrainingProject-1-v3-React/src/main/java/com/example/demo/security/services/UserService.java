package com.example.demo.security.services;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.example.demo.model.User;
import com.example.demo.respository.UserRepository;

@Service("userService")
public class UserService {
	private UserRepository userRepository ;
	
	@Autowired
    private PasswordEncoder passwordEncoder;
	
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
	public void changeUserPassword(final User user, String password) {
		 user.setPassword(passwordEncoder.encode(password));
	        userRepository.save(user);
	}
	 public boolean checkIfValidOldPassword(final User user, final String oldPassword) {
	        return passwordEncoder.matches(oldPassword, user.getPassword());
	    }
	
}

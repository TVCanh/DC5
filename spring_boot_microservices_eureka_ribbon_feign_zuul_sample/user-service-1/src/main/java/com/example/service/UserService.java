package com.example.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.model.User;

@Service("userService")
public interface UserService {
	public List<User> getUsers();
	public User saveUser(User use);
	public User findByUserName(String userName);
}

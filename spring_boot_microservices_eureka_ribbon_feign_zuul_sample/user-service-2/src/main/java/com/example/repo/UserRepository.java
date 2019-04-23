package com.example.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.example.model.User;

@Repository
@Transactional
public interface UserRepository extends JpaRepository<User, Long> {
	User findByUserName(String userName);
}
package com.example.demo.respository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import com.example.demo.model.LoginToken;

public interface TokenRepository extends JpaRepository < LoginToken, Long > {
	
	Optional<LoginToken> findByToken(String token) ;
	
}

package com.example.demo.security.jwt;

import io.jsonwebtoken.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Component;

import com.example.demo.model.LoginToken;
import com.example.demo.respository.TokenRepository;
import com.example.demo.security.services.UserPrinciple;

import java.util.Date;

@Component
public class JwtProvider {

	@Autowired
	TokenRepository tokenRepository;

	private static final Logger logger = LoggerFactory.getLogger(JwtProvider.class);

	@Value("${tvancanh.app.jwtSecret}")
	private String jwtSecret;

	@Value("${tvancanh.app.jwtExpiration}")
	private int jwtExpiration;

	public String generateJwtToken(Authentication authentication) {

		UserPrinciple userPrincipal = (UserPrinciple) authentication.getPrincipal();
		return Jwts.builder().setSubject((userPrincipal.getUsername())).setIssuedAt(new Date()) // time token is
																								// released
				.setExpiration(new Date((new Date()).getTime() + jwtExpiration * 1000)) // time token has been expired
				.signWith(SignatureAlgorithm.HS512, jwtSecret).compact();
	}

	public String getUserNameFromJwtToken(String token) {
		return Jwts.parser().setSigningKey(jwtSecret).parseClaimsJws(token).getBody().getSubject();
	}

	public boolean validateJwtToken(String authToken) {
		tokenRepository.findByToken(authToken).orElseThrow(() -> new RuntimeException("fail -> not find token"));

		try {
			Jwts.parser().setSigningKey(jwtSecret).parseClaimsJws(authToken);
			return true;
		} catch (SignatureException e) {
			logger.error("Invalid JWT signature -> Message: {} ", e);
		} catch (MalformedJwtException e) {
			logger.error("Invalid JWT token -> Message: {}", e);
		} catch (ExpiredJwtException e) {
			logger.error("Expired JWT token -> Message: {}", e);
		} catch (UnsupportedJwtException e) {
			logger.error("Unsupported JWT token -> Message: {}", e);
		} catch (IllegalArgumentException e) {
			logger.error("JWT claims string is empty -> Message: {}", e);
		}
		return false;
	}
}

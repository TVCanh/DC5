package com.example.intercommunication;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;

@FeignClient(name = "user-service")
public interface UserClient {
	@GetMapping(value = "/users")
	Object getUsers();
}

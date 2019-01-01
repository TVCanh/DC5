package com.example.demo.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.model.Product;
import com.example.demo.model.User;
import com.example.demo.respository.ProductRepository;

@RestController
@RequestMapping(value = "/admin")
public class ManageProduct {
	@Autowired
	ProductRepository productRepository;
	
	@GetMapping(value = "/products")
	@PreAuthorize ("hasRole ('ADMIN') ")
	public List<Product> getAllProduct(){
		return productRepository.findAll();
	}
	
	@GetMapping(value = "/products/{id}")
	@PreAuthorize("hasRole('ADMIN')")
	public ResponseEntity<Product> getUserById (@PathVariable(value = "id") Long productID){
		Product product = productRepository.findById(productID)
				.orElseThrow(() -> new RuntimeException("Fail! -> Cause: User Id not find."));
        return ResponseEntity.ok().body(product);
	}
	
	@PostMapping("/create/product")
	@PreAuthorize ("hasRole ('ADMIN')")
    public Product createEmployee(@Valid @RequestBody Product product) {
        return productRepository.save(product);
    }
	
	@PostMapping(value = "/update/product/{id}")
	@PreAuthorize ("hasRole ('ADMIN')")
	public ResponseEntity<?> updateProduct(@RequestBody Product product, @PathVariable long id){
		Optional<Product> productOptional = productRepository.findById(id);
		if(!productOptional.isPresent()) return ResponseEntity.notFound().build();	
		product.setId(id);
		productRepository.save(product);
		return ResponseEntity.ok().body("A product has been updated!");
	}
	
	@DeleteMapping(value = "/delete/product/{id}")
	@PreAuthorize(" hasRole('ADMIN')")
	public Map<String, Boolean> deleteProduct(@PathVariable(value = "id") Long productId){
		Product product = productRepository.findById(productId)
				.orElseThrow(() -> new RuntimeException("Fail! -> Cause: User Id not find."));
		productRepository.delete(product);
		Map<String, Boolean> response = new HashMap<>();
		response.put("deleted", Boolean.TRUE);
		return response ;
	}
}
	

package com.example.demo.respository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.model.Image;

@Repository
public interface ImageRepository extends JpaRepository<Image, Long> {
	 Optional<Image> findByProductId(long productId) ;
}
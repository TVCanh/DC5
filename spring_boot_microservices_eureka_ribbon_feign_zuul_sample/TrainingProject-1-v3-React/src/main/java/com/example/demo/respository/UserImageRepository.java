package com.example.demo.respository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.model.Image;
import com.example.demo.model.UserImage;

@Repository
public interface UserImageRepository extends JpaRepository<UserImage, Long> {
	 Optional<UserImage> findByProductId(long userId) ;
}
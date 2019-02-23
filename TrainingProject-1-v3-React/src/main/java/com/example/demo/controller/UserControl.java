package com.example.demo.controller;

import java.nio.file.attribute.UserPrincipal;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import com.example.demo.model.User;
import com.example.demo.payload.UserIdentityAvailability;
import com.example.demo.payload.UserProfile;
import com.example.demo.payload.UserSummary;
import com.example.demo.respository.ImageRepository;
import com.example.demo.respository.UserRepository;
import com.example.demo.security.services.CurrentUser;
import com.example.demo.security.services.EcommerceService;
import com.example.demo.security.services.UserPrinciple;
import com.example.demo.storage.StorageService;
import com.example.demo.exception.ResourceNotFoundException;

@RestController
@RequestMapping("/api/auth")
public class UserControl{

    @Autowired	
    private UserRepository userRepository;

    @Autowired
    private EcommerceService ecommerceService;

    @Autowired
    private StorageService storageService;
    
    @Autowired
    private ImageRepository imageRepository;

    private static final Logger logger = LoggerFactory.getLogger(UserControl.class);

    @GetMapping("/user/me")
    public UserSummary getCurrentUser(@CurrentUser UserPrinciple currentUser) {
        UserSummary userSummary = new UserSummary( currentUser.getId(), currentUser.getUsername(), currentUser.getName());
        return userSummary;
    }

    @GetMapping("/user/checkUsernameAvailability")
    public UserIdentityAvailability checkUsernameAvailability(@RequestParam(value = "username") String username) {
        Boolean isAvailable = !userRepository.existsByUsername(username);
        return new UserIdentityAvailability(isAvailable);
    }

    @GetMapping("/user/checkEmailAvailability")
    public UserIdentityAvailability checkEmailAvailability(@RequestParam(value = "email") String email) {
        Boolean isAvailable = !userRepository.existsByEmail(email);
        return new UserIdentityAvailability(isAvailable);
    }
    
    @GetMapping("/users/{username}")
    public UserProfile getUserProfile(@PathVariable(value = "username") String username) {
        User user = userRepository.findByUsername(username)
                .orElseThrow(() -> new ResourceNotFoundException("User", "username", username));
        UserProfile userProfile = new UserProfile(user.getId(), user.getUsername(), user.getName());
        return userProfile;
    }
    
    @PostMapping("/{id}/userimage")
    public String handleFileUpload(@PathVariable("id") String id, @RequestParam("file") MultipartFile file) {

        // Relative path to the rootLocation in storageService
        String path = "/user-images/" + id;
        String filename = storageService.store(file, path, id);

        return ecommerceService.addUserImage(id, filename) ;
    }

}

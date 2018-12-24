package com.example.demo.controller;

import java.util.HashSet;
import java.util.Map;
import java.util.Optional;
import java.util.Set;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo.message.request.LoginForm;
import com.example.demo.message.request.SignUpForm;
import com.example.demo.message.response.JwtResponse;
import com.example.demo.model.Role;
import com.example.demo.model.RoleName;
import com.example.demo.model.User;
import com.example.demo.respository.RoleRepository;
import com.example.demo.respository.UserRepository;
import com.example.demo.security.jwt.JwtProvider;
import com.example.demo.security.services.EmailService;
import com.example.demo.security.services.UserService;
import com.nulabinc.zxcvbn.Strength;
import com.nulabinc.zxcvbn.Zxcvbn;

@CrossOrigin(origins = "*", maxAge = 3600)
@RestController
@RequestMapping("/api/auth")
public class AuthRestAPIs {
	@Autowired
	EmailService emailService;

	@Autowired
	UserService userService;

	@Autowired
	AuthenticationManager authenticationManager;

	@Autowired
	UserRepository userRepository;

	@Autowired
	RoleRepository roleRepository;

	@Autowired
	PasswordEncoder encoder;

	@Autowired
	JwtProvider jwtProvider;

	@PostMapping("/signin")
	public ResponseEntity<?> authenticateUser(@Valid @RequestBody LoginForm loginRequest) {
		User user = userRepository.findByUsername(loginRequest.getUsername())
				.orElseThrow(() -> new UsernameNotFoundException(
						"User Not Found with -> username or email : " + loginRequest.getUsername()));
		if (user.getEnabled() == true) {
			Authentication authentication = authenticationManager.authenticate(
					new UsernamePasswordAuthenticationToken(loginRequest.getUsername(), loginRequest.getPassword()));

			SecurityContextHolder.getContext().setAuthentication(authentication);

			String jwt = jwtProvider.generateJwtToken(authentication);
			return ResponseEntity.ok(new JwtResponse(jwt));
		} else {
			return new ResponseEntity<String>("Fail -> Account has not been activated!", HttpStatus.BAD_REQUEST);
		}
	}

	@PostMapping("/signup")
	public ResponseEntity<String> registerUser(@Valid @RequestBody SignUpForm signUpRequest,
			BindingResult bindingResult, HttpServletRequest request) {
		if (userRepository.existsByUsername(signUpRequest.getUsername())) {
			return new ResponseEntity<String>("Fail -> Username is already taken!", HttpStatus.BAD_REQUEST);
		}
		User user = new User(signUpRequest.getName(), signUpRequest.getUsername(), signUpRequest.getEmail(),
				encoder.encode(signUpRequest.getPassword()));
		if (userRepository.existsByEmail(signUpRequest.getEmail())) {
			return new ResponseEntity<String>("Fail -> Email is already in use!", HttpStatus.BAD_REQUEST);
		} else { // new user so we create user and send confirmation e-mail
					// Disable user until they click on confirmation link in email
			user.setEnabled(false);
			user.setConfirmationToken(UUID.randomUUID().toString());
			Set<Role> roles = new HashSet<>();
			Role userRole = roleRepository.findByName(RoleName.ROLE_USER)
					.orElseThrow(() -> new RuntimeException("Fail! -> Cause: User Role not find."));
			roles.add(userRole);
			user.setRoles(roles);
			// return ResponseEntity.ok().body(user.getConfirmationToken());
//			Set<String> strRoles = signUpRequest.getRole();
//			
//
//			strRoles.forEach(role -> {
//				switch (role) {
//				case "admin":
//					Role adminRole = roleRepository.findByName(RoleName.ROLE_ADMIN)
//							.orElseThrow(() -> new RuntimeException("Fail! -> Cause: User Role not find."));
//					roles.add(adminRole);
//
//					break;
//				case "pm":
//					Role pmRole = roleRepository.findByName(RoleName.ROLE_PM)
//							.orElseThrow(() -> new RuntimeException("Fail! -> Cause: User Role not find."));
//					roles.add(pmRole);
//
//					break;
//				default:
//					Role userRole = roleRepository.findByName(RoleName.ROLE_USER)
//							.orElseThrow(() -> new RuntimeException("Fail! -> Cause: User Role not find."));
//					roles.add(userRole);
//				}
//			});
//
//			user.setRoles(roles);
			userRepository.save(user);
			String appUrl = request.getScheme() + "://" + request.getServerName() + ":" + request.getLocalPort();

			SimpleMailMessage registrationEmail = new SimpleMailMessage();
			registrationEmail.setTo(user.getEmail());
			registrationEmail.setSubject("Registration Confirmation");
			registrationEmail.setText("To confirm your e-mail address, please click the link below:\n" + appUrl
					+ "/api/auth" + "/confirm?token=" + user.getConfirmationToken());
			registrationEmail.setFrom("noreply@domain.com");

			emailService.sendEmail(registrationEmail);
			// return ResponseEntity.ok().body("An mail sent!");
			return ResponseEntity.ok().body(user.getConfirmationToken());

			// return ResponseEntity.ok().body("User registered successfully!");
		}
	}

	@GetMapping(value = "/confirm")
	public ResponseEntity<String> processConfirmationForm(@RequestParam("token") String token) {

		User user = userRepository.findByConfirmationToken(token);
		if (user == null) {
			return new ResponseEntity<String>("User dose not exsit", HttpStatus.BAD_REQUEST);

		} else {

			user.setEnabled(true);
			userRepository.save(user);
			user.setConfirmationToken(null);
		}
		return ResponseEntity.ok().body("Account is active");
	}

	@PostMapping(value = "/forgot")
	public ResponseEntity<String> forgotPassword(@RequestBody User email, HttpServletRequest request) {
		// lookup user in DB by email
		Optional<User> optional = userService.findUserByEmail(email.getEmail());
		if (!optional.isPresent()) {
			return new ResponseEntity<String>("Fail -> We didn't find an account for that e-mail address!",
					HttpStatus.BAD_REQUEST);
		} else {
			// Generate random 36-character string token for reset password
			User user = optional.get();
			user.setResetToken(UUID.randomUUID().toString());
			// save token into DB
			userService.saveUser(user);

			String appUrl = request.getScheme() + "://" + request.getServerName() + ":" + request.getLocalPort();

			SimpleMailMessage passwordResetEmail = new SimpleMailMessage();
			passwordResetEmail.setFrom("support@domain.com");
			passwordResetEmail.setTo(user.getEmail());
			passwordResetEmail.setSubject("Password reset request");
			passwordResetEmail.setText("To reset your password, please click link below:\n" + appUrl + "/api/auth"
					+ "/reset?token=" + user.getResetToken());
			emailService.sendEmail(passwordResetEmail);

			return ResponseEntity.ok().body("A password reset link has sent to " + user.getEmail());
		}

	}

	@PostMapping(value = "/reset")
	public ResponseEntity<String> setNewPassword(@RequestBody User password,
			@RequestParam Map<String, String> requestParams, RedirectAttributes redir) {
		Optional<User> user = userService.findUserByResetToken(requestParams.get("token"));
		if (user.isPresent()) {
			User resetUser = user.get();
			// resetUser.setPassword("12345678x@X");
			resetUser.setPassword(encoder.encode(password.getPassword()));
			resetUser.setResetToken(null);
			userService.saveUser(resetUser);
		} else {
			return new ResponseEntity<String>("Fail -> We didn't find an account for that e-mail address!",
					HttpStatus.BAD_REQUEST);
		}
		return ResponseEntity.ok().body("Your password has set successfully");
		// return ResponseEntity.ok().body("Your password has set default");
	}
	
	@PostMapping(value = "/promote")
	public ResponseEntity<String> promoteRole(@RequestBody SignUpForm promote){
		User user = new User( promote.getUsername()) ;
		if (userRepository.existsByUsername(promote.getUsername())) {
			
			Set<Role> roles = new HashSet<>();
			Set<String> strRoles = promote.getRole();			

			strRoles.forEach(role -> {
				switch (role) {
				case "staff":
					Role adminRole = roleRepository.findByName(RoleName.ROLE_STAFF)
							.orElseThrow(() -> new RuntimeException("Fail! -> Cause: User Role not find."));
					roles.add(adminRole);
					break;
				case "supervisor":
					Role pmRole = roleRepository.findByName(RoleName.ROLE_SUPERVISOR)
							.orElseThrow(() -> new RuntimeException("Fail! -> Cause: User Role not find."));
					roles.add(pmRole);
					break;
				}
			});
			user.setRoles(roles);
		}
		else {
			return new ResponseEntity<String>("Fail -> Username does not exist", HttpStatus.BAD_REQUEST) ;
		}
		return ResponseEntity.ok().body("Promoted "+ user.getUsername() +" to role "+ user.getRoles()) ;
	}
	
	@PostMapping(value = "/disBand")
	public ResponseEntity<String> disBaneRole(@RequestBody SignUpForm promote){
		User user = new User( promote.getUsername()) ;
		if (userRepository.existsByUsername(promote.getUsername())) {
			
			Set<Role> roles = new HashSet<>();
			Set<String> strRoles = promote.getRole();			

			strRoles.forEach(role -> {
				if(role == "user") {
					Role adminRole = roleRepository.findByName(RoleName.ROLE_USER)
							.orElseThrow(() -> new RuntimeException("Fail! -> Cause: User Role not find."));
					roles.add(adminRole);
				}
			});
			user.setRoles(roles);
		}
		else {
			return new ResponseEntity<String>("Fail -> Username does not exist", HttpStatus.BAD_REQUEST) ;
		}
		return ResponseEntity.ok().body("Promoted "+ user.getUsername() +" to role "+ user.getRoles()) ;
	}
	
//	@DeleteMapping(value = "/delete")
//	public ResponseEntity<String> deleteUser(@RequestBody SignUpForm delete){
//		User user = new User( delete.getUsername()) ;
//		//if (userRepository.findById(id));
//	}
	

//	@GetMapping("/current")
//	User getCurrent(@AuthenticationPrincipal final User user) {
//		return user;
//	}

}
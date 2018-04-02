package com.grow.agriculture.controllers;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.grow.agriculture.enumuration.UserType;
import com.grow.agriculture.model.OTP;
import com.grow.agriculture.model.User;
import com.grow.agriculture.repository.UserRepository;


@Controller
public class LandingPageComponentController {
	private static final Logger log = LoggerFactory.getLogger(LandingPageComponentController.class);
	/*@Autowired
	UserRepository userRepository;*/

	private static final String VIEW_NAME = "landingPageComponent";
	
	
	@GetMapping("/")
	public String landingPage() {
		/*User user = new User();
		OTP otp = new OTP();
		List<OTP> otps = new ArrayList<>();
		user.setConfirmPassword("1").setOtpVerified(true).setPassword("1").setPhoneNumber(1L).setUserType(UserType.FARMER).setOtp(otps);
		otp.setSessionId("1").setStatus("1").setTries(1).setValue("1").setUser(user);
		otps.add(otp);
		userRepository.save(user);*/
		return VIEW_NAME;
	}
	
	/*@GetMapping("/home")
	public String hPage() {
		Optional<User> user = userRepository.findById(1L);
		User users = user.get();
		
		OTP otp = new OTP();
		List<OTP> otps = new ArrayList<>();
		otp.setSessionId("2").setStatus("2").setTries(2).setValue("2").setUser(users);
		otps.add(otp);
		users.setOtp(otps);
		
		userRepository.save(users);
		return VIEW_NAME;
	}*/
}

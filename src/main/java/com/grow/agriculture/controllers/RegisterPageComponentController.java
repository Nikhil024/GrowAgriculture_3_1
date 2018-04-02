package com.grow.agriculture.controllers;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.grow.agriculture.model.OTP;
import com.grow.agriculture.model.User;
import com.grow.agriculture.repository.UserRepository;

@Controller

public class RegisterPageComponentController {

	@Autowired
	UserRepository userRepository;
	
	private static final Logger log = LoggerFactory.getLogger(RegisterPageComponentController.class);
	private static final String VIEW_NAME = "registerPageComponent";
	private static final String LOGIN_VIEW_NAME = "loginPageComponent";
	private static final String MODEL_NAME = "user";
	private static final String OTP_ERROR = "otpError";

	@GetMapping("/register")
	public ModelAndView register() {
		ModelAndView mav = new ModelAndView();
		mav.addObject(MODEL_NAME, new User());
		mav.setViewName(VIEW_NAME);
		return mav;
	}

	@PostMapping("/register")
	@Transactional
	public ModelAndView registerUser(@ModelAttribute(MODEL_NAME) User user, BindingResult result) {
		ModelAndView mav = new ModelAndView();
		System.out.println(user.toString());
		
		Optional<User> users = userRepository.findByPhoneNumber(user.getPhoneNumber());
		
		List<OTP> otp = new ArrayList<>();
		otp.add(user.getOtp());
		
		if(users.isPresent()) {
			user = users.get();
		}
		
		
		user.setOtpList(otp);
		
		userRepository.save(user);
		
		mav.setViewName(VIEW_NAME);
		return mav;
	}

}

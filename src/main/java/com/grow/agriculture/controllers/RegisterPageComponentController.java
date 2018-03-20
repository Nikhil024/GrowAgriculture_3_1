package com.grow.agriculture.controllers;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.grow.agriculture.model.OTPMessage;
import com.grow.agriculture.repository.OTPRepository;
import com.grow.agriculture.repository.UserRepository;

@Controller
public class RegisterPageComponentController {
	
	@Autowired
	OTPRepository otpRepository;
	
	@Autowired
	UserRepository userRepository;
	
	private static final Logger log = LoggerFactory.getLogger(RegisterPageComponentController.class);
	private static final String VIEW_NAME = "registerPageComponent";
	private static final String MODEL_NAME = "user";
	
	
	@GetMapping("/register")
	public ModelAndView register() {
		ModelAndView mav = new ModelAndView();
		mav.addObject(MODEL_NAME, new OTPMessage());
		mav.setViewName(VIEW_NAME);
		return mav;
	}
	
	
	@PostMapping("/register")
	public ModelAndView registerUser(@ModelAttribute(MODEL_NAME) OTPMessage user, BindingResult result) {
		
		
		if(userRepository.phoneNumberExists(user.getUser().getPhoneNumber()) == 1) {
			otpRepository.save(user);
		}else {
			if(result.hasErrors()) {
				result.getAllErrors().forEach(System.out::println);
			}
		}
		
		
		
		
		System.out.println(user.getStatus());
		
		otpRepository.save(user);
		log.info(user.toString());
		ModelAndView mav = new ModelAndView();
		mav.addObject("","");
		mav.setViewName(VIEW_NAME);
		return mav;
		
	}
	
	
	
}

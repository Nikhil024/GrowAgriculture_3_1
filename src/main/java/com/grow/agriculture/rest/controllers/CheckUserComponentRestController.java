package com.grow.agriculture.rest.controllers;

import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.grow.agriculture.model.User;
import com.grow.agriculture.repository.UserRepository;

@RestController
public class CheckUserComponentRestController {
	private static final Logger log = LoggerFactory.getLogger(CheckUserComponentRestController.class);
	
	@Autowired
	UserRepository userRepository;
	
	@PostMapping("/checkUser")
	@ResponseBody
	public User checkUser(@RequestBody Long phoneNumber) {
		return null;
		/*log.info("PhoneNumber:::::::::::"+phoneNumber);
		Optional<User> optional = userRepository.findByPhoneNumber(phoneNumber);
		
		if(optional.isPresent()) {
			return optional.get();
		}else {
			return null;
		}*/
		
	}
}

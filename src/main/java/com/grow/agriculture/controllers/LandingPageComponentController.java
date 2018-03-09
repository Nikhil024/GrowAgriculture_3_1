package com.grow.agriculture.controllers;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.Arrays;
import java.util.List;
import java.util.function.Consumer;


@Controller
public class LandingPageComponentController {
	private static final Logger log = LoggerFactory.getLogger(LandingPageComponentController.class);

	private static final String VIEW_NAME = "landingPageComponent";
	
	
	@GetMapping("/")
	public String landingPage() {
		return VIEW_NAME;
	}
}

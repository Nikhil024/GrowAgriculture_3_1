package com.grow.agriculture.rest.controllers;

import java.util.ArrayList;
import java.util.List;

import lombok.extern.slf4j.Slf4j;
import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.grow.agriculture.model.User;
import com.grow.agriculture.repository.OTPRepository;
import com.grow.agriculture.repository.UserRepository;
import com.mashape.unirest.http.HttpResponse;
import com.mashape.unirest.http.JsonNode;
import com.mashape.unirest.http.Unirest;
import com.mashape.unirest.http.exceptions.UnirestException;

@Controller
@Slf4j
@PropertySource(value = "classpath:application.properties")
public class OTPComponentRestController {

	@Value("${com.grow.agriculture.otp.url}")
	private String otpURL;

	@Value("${com.grow.agriculture.otp.verify.url}")
	private String otpVerifyURL;

	@RequestMapping(value = "/sendOtp", method = RequestMethod.POST)
	@ResponseBody
	public List<String> sendOTP(@RequestParam("phoneNumber") String phoneNumber) throws UnirestException {
		List<String> jsonList = new ArrayList<>();

		/*otpURL = otpURL.replace("phoneNumber", phoneNumber);

		HttpResponse<JsonNode> response = Unirest.get(otpURL)
				.header("content-type", "application/x-www-form-urlencoded").asJson();

		JSONObject jsonObject = response.getBody().getObject();
		String status = jsonObject.getString("Status");
		String details = jsonObject.getString("Details");*/

		String status = "success";
		String details = "OTP Sent";
		
		jsonList.add(status);
		jsonList.add(details);

		return jsonList;
	}

	@RequestMapping(value = "/checkOtp", method = RequestMethod.POST)
	@ResponseBody
	public List<String> checkOTP(@RequestParam("otpValue") String otpValue, @RequestParam("sessionID") String sessionID)
			throws UnirestException {
		List<String> jsonList = new ArrayList<>();

		/*otpVerifyURL = otpVerifyURL.replace("sessionID", sessionID);
		otpVerifyURL = otpVerifyURL.replace("otpValue", otpValue);

		HttpResponse<JsonNode> response = Unirest.get(otpVerifyURL)
				.header("content-type", "application/x-www-form-urlencoded").asJson();
		JSONObject jsonObject = response.getBody().getObject();
		String status = jsonObject.getString("Status");
		String details = jsonObject.getString("Details");*/
		
		String status = "success";
		String details = "OTP Matchedn";
		jsonList.add(status);
		jsonList.add(details);

		return jsonList;
	}

}

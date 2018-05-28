package com.springboot.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

	// inject via application.properties
	@Value("${welcome.message:test}")
	private String message = "Hello World";

	@RequestMapping("/ee")
	public String welcome(ModelMap model) {
		model.put("message", this.message);
		return "login/index";
	}

	@RequestMapping("/testee")
	public String loadTest(ModelMap model) {
		model.put("message", this.message);
		return "test";
	}

}
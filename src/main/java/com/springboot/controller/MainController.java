package com.springboot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/traingator")
public class MainController {
	
	@RequestMapping("/1")
	public String test1(){
		
		return "tnaform";
	}
	@RequestMapping("/2")
	public String test2(){
		
		return "userDone";
	}
	@RequestMapping("/3")
	public String test3(){
		
		return "userOngoing";
	}
	@RequestMapping("/4")
	public String test4(){
		
		return "userRecommended";
	}
	@RequestMapping("/5")
	public String test5(){
		
		return "userUpcoming";
	}
	@RequestMapping("/6")
	public String test6(){
		
		return "userAll";
	}
	@RequestMapping("/7")
	public String test7(){
		
		return "trainingEvents";
	}
}

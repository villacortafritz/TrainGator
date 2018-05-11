package com.springboot.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("")
public class MainController {
	
	@RequestMapping(value="/tnaform",method=RequestMethod.GET)
	public String tnaform(HttpServletRequest request, ModelMap map) {
		return "tnaform";
	}
	
	@RequestMapping(value="/userDone",method=RequestMethod.GET)
	public String userDone(HttpServletRequest request, ModelMap map) {
		return "userDone";
	}
	
	@RequestMapping(value="/userOngoing",method=RequestMethod.GET)
	public String userOngoing(HttpServletRequest request, ModelMap map) {
		return "userOngoing";
	}
	
	@RequestMapping(value="/userRecommended",method=RequestMethod.GET)
	public String userRecommended(HttpServletRequest request, ModelMap map) {
		return "userRecommended";
	}
	
	@RequestMapping(value="/userUpcoming",method=RequestMethod.GET)
	public String userUpcoming(HttpServletRequest request, ModelMap map) {
		return "userUpcoming";
	}
	
	@RequestMapping(value="/userAll",method=RequestMethod.GET)
	public String userAll(HttpServletRequest request, ModelMap map) {
		return "userAll";
	}
	
	
	@RequestMapping(value="/trainingEvents",method=RequestMethod.GET)
	public String trainingEvents(HttpServletRequest request, ModelMap map) {
		return "adminAll";
	}
	
	@RequestMapping(value="/adminAll",method=RequestMethod.GET)
	public String adminAll(HttpServletRequest request, ModelMap map) {
		return "adminAll";
	}
	
	@RequestMapping(value="/adminDone",method=RequestMethod.GET)
	public String adminDone(HttpServletRequest request, ModelMap map) {
		return "adminDone";
	}
	
	@RequestMapping(value="/adminOngoing",method=RequestMethod.GET)
	public String adminOngoing(HttpServletRequest request, ModelMap map) {
		return "adminOngoing";
	}
	
	@RequestMapping(value="/adminUpcoming",method=RequestMethod.GET)
	public String adminUpcoming(HttpServletRequest request, ModelMap map) {
		return "adminUpcoming";
	}
	
	@RequestMapping(value="/attendance",method=RequestMethod.GET)
	public String attendance(HttpServletRequest request, ModelMap map) {
		return "attendance";
	}
	
	@RequestMapping(value="/cff",method=RequestMethod.GET)
	public String cff(HttpServletRequest request, ModelMap map) {
		return "cff";
	}
	
	@RequestMapping(value="/createEvent",method=RequestMethod.GET)
	public String createEvent(HttpServletRequest request, ModelMap map) {
		return "createEvent";
	}
	
	@RequestMapping(value="/doneEvents",method=RequestMethod.GET)
	public String doneEvents(HttpServletRequest request, ModelMap map) {
		return "doneEvents";
	}
	
	@RequestMapping(value="/faciComments",method=RequestMethod.GET)
	public String faciComments(HttpServletRequest request, ModelMap map) {
		return "faciComments";
	}
	
	@RequestMapping(value="/profile",method=RequestMethod.GET)
	public String profile(HttpServletRequest request, ModelMap map) {
		return "profile";
	}
	
	@RequestMapping(value="/recoverPassword",method=RequestMethod.GET)
	public String recoverPassword(HttpServletRequest request, ModelMap map) {
		return "recoverPassword";
	}
	
	@RequestMapping(value="/recoverUsername",method=RequestMethod.GET)
	public String recoverUsername(HttpServletRequest request, ModelMap map) {
		return "recoverUsername";
	}
	
	@RequestMapping(value="/signin",method=RequestMethod.GET)
	public String signin(HttpServletRequest request, ModelMap map) {
		return "signin";
	}
	
	@RequestMapping(value="/signup",method=RequestMethod.GET)
	public String signup(HttpServletRequest request, ModelMap map) {
		return "signup";
	}
	
	@RequestMapping(value="/skillsAssessment",method=RequestMethod.GET)
	public String skillsAssessment(HttpServletRequest request, ModelMap map) {
		return "skillsAssessment";
	}
	
	@RequestMapping(value="/teaf",method=RequestMethod.GET)
	public String teaf(HttpServletRequest request, ModelMap map) {
		return "teaf";
	}
}
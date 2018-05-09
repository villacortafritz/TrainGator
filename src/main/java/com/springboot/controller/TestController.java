package com.springboot.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.springboot.entities.User;
import com.springboot.service.TestService;

@Controller
@RequestMapping("/test")
public class TestController {
	// <CONTEXT PATH>/test
	@Autowired
	private TestService testService;
		
	@RequestMapping(value="/cha",method=RequestMethod.GET)
	public String testRoutingGet(HttpServletRequest request, ModelMap map) {
		map.addAttribute("destination","test");
		testService.setMyName(request.getParameter("myName"));
		map.addAttribute("myName",testService.getMyName());
		return "test_cha";
	}

	@RequestMapping(value="/chacha",method=RequestMethod.POST)
	public String testRoutingPost(HttpServletRequest request, ModelMap map) {
		String name = request.getParameter("txtName");
		boolean isValid = testService.validateUserInfo(name);
		User andrew = new User();
		if(isValid) {
			andrew.setUsername("KRIS AQUINO");
			andrew.setPassword("BIMBY");
			andrew.setId(46);
		} else {
			andrew.setUsername("KORINA SANCHEZ");
			andrew.setPassword("MAR ROXAS");
			andrew.setId(30);
		}
		
		map.addAttribute("myName",name);
		map.addAttribute("myName", "Cheesy!");
		map.addAttribute("andrewUser", andrew);
		return "test_cha2";
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
	
	@RequestMapping(value="/tna",method=RequestMethod.GET)
	public String tna(HttpServletRequest request, ModelMap map) {
		return "tna";
	}
}

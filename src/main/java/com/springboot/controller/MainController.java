package com.springboot.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

import com.springboot.service.MainService;

@Controller
@RequestMapping("")
public class MainController {
	
	@Autowired
	private MainService MainService;
	
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
	public String createEvent(HttpServletRequest request, ModelMap map) throws ParseException {
		Date train_datestart = new SimpleDateFormat("yyyy,MM,dd",Locale.ENGLISH).parse("train_datestart");
		Date train_dateend = new SimpleDateFormat("yyyy,MM,dd",Locale.ENGLISH).parse("train_dateend");
		String train_timestart = request.getParameter("train_timestart");
		String train_timeend = request.getParameter("train_timeend");
		String train_courseobjective = request.getParameter("train_courseobjective");
		String train_courseoutline = request.getParameter("train_courseoutline");
		int train_faci = Integer.parseInt(request.getParameter("train_faci"));
		int train_sv = Integer.parseInt(request.getParameter("train_sv"));
		int train_pt = Integer.parseInt(request.getParameter("train_pt"));
		
		MainService.addTraining(train_datestart, train_dateend, train_timestart, train_timeend, train_courseobjective,
				train_courseoutline, train_faci, train_sv, train_pt);

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
	
	@RequestMapping(value="/userAll",method=RequestMethod.POST)
	public String loaduserall(HttpServletRequest request, ModelMap map) {
		
		String uname = request.getParameter("username");
		String pword = request.getParameter("password");
		
		if(uname.equals("admin") && pword.equals("admin")){
			return "userAll";
		}
		else {
			return "signin";
		}
		
	}
	
	@RequestMapping("/signup")
	public String loadsignup() {
		return "signup";
	}
	
	@RequestMapping(value="/signup",method=RequestMethod.POST)
	public String signup(HttpServletRequest request, ModelMap map) {
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String type = request.getParameter("role");
		MainService.addUser(fname,lname,email,password,type);
		
		return "signup";
	}
	
	@RequestMapping(value="/skillsAssessment",method=RequestMethod.GET)
	public String skillsAssessment(HttpServletRequest request, ModelMap map) {
//		String temp = request.getParameter("ratingtrophy");
//		int trainParVal = Integer.parseInt(temp);
//		MainService.addTrainingParticipantRating(trainParVal);
//		
		return "skillsAssessment";
	}
	
	@RequestMapping(value="/teaf",method=RequestMethod.GET)
	public String teaf(HttpServletRequest request, ModelMap map) {
		return "teaf";
	}
	
	@RequestMapping("/trainingDetails")
	public String loadTrainingDetails() {
		return "trainingDetails";
	}
	
	@RequestMapping(value="/insertParticipant",method=RequestMethod.POST)
	public String addParticipant(HttpServletRequest request, ModelMap map) {
		String name = request.getParameter("nameRecommended");
		if(name.equals("Bunny Barros")){
			MainService.addParticipant(name);
		}		
		return "trainingDetails";
	}
	
	


	

	
	
	
	
}

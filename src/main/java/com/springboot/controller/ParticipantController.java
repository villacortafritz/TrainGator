package com.springboot.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

import com.springboot.entities.TblUser;
import com.springboot.service.MainService;

@Controller
@RequestMapping("/participant")
public class ParticipantController {
	
	@Autowired
	private MainService MainService;
	
	@RequestMapping(value="/adminTrainingDetails", method=RequestMethod.GET)
	public String loadTrainingDetailsScreen(HttpServletRequest request, ModelMap map) {
		List<TblUser> recommendedList = MainService.getRecommendedParticipants();
		List<TblUser> confirmedList = MainService.getConfirmedParticipants();
		map.addAttribute("recommendedList", recommendedList);	
		map.addAttribute("confirmedList", confirmedList);	
		return "TrainGator/adminTrainingDetails";	
	}
	
	@RequestMapping(value="/deleteParticipant",method=RequestMethod.POST)
	public String removeParticipantById(HttpServletRequest request, ModelMap map) {
		String[] id = request.getParameterValues("confirmedUser");
		MainService.removeParticipantById(id);

		return loadTrainingDetailsScreen(request,map);
	}
	
	@RequestMapping(value="/insertParticipant",method=RequestMethod.POST)
	public String addParticipant(HttpServletRequest request, ModelMap map) {
				
		String[] userId =  request.getParameterValues("userRecommended");
	
		MainService.addParticipant(userId);
				
		return  loadTrainingDetailsScreen(request, map);
	}
	

	
	
	
	
	
	
	
	

}

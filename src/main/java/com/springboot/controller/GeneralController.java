package com.springboot.controller;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;





import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import java.util.List;
import java.util.stream.IntStream;

import com.springboot.entities.TblCat;
import com.springboot.entities.TblParticipant;
import com.springboot.entities.TblSubcat;
import com.springboot.entities.TblTraining;
import com.springboot.entities.TblUser;
import com.springboot.service.MainService;

@Controller
@RequestMapping("/")
public class GeneralController {
	
	@Autowired
	private MainService MainService;
	
	@RequestMapping("/generalSignin")
	public String generalSigninGet(SessionStatus status) {
		status.setComplete();
		return "TrainGator/generalSignin";
	}
	
	@RequestMapping(value="/generalSignin", method=RequestMethod.POST)
	public String generalSigninPost(HttpServletRequest request, ModelMap map) {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String error = "Invalid Email or Password";
		TblUser user = (TblUser)MainService.checkUser(email,password);
		if(user!=null){
			request.getSession().setAttribute("userID",user.getUserId());
			request.getSession().setAttribute("fname",user.getUserFname());
			request.getSession().setAttribute("lname",user.getUserLname());
			request.getSession().setAttribute("usertype",user.getUserType());
			if(user.getUserType().equals("administrator"))
				return "TrainGator/adminOngoing";
			else{
				List<Object> joined = MainService.getJoinedTraining(user.getUserId());
//				System.out.println(Arrays.deepToString(joined.toArray()));
				map.addAttribute("joined",joined);
				return "TrainGator/userJoined";
				}
			}
		else{
			map.addAttribute("error",error);
			return "TrainGator/generalSignin";
		}
	}
	
	@RequestMapping("/generalSignup")
	public String loadgeneralSignup(ModelMap map) {
		List<TblUser> sv = MainService.getSupeprvisor();
		map.addAttribute("supervisor",sv);
		return "TrainGator/generalSignup";
	}
	
	@RequestMapping(value="/generalSignup", method=RequestMethod.POST)
	public String generalSignup(HttpServletRequest request, ModelMap map) {
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String supervisor  = (request.getParameter("supervisor")==null) ? "" : request.getParameter("supervisor");
		MainService.addUser(fname,lname,email,password,supervisor);
		return "TrainGator/generalSignup";
	}
	
//	@RequestMapping(value="/userAccomplished", method=RequestMethod.GET)
//	public String userAccomplished(HttpServletRequest request, ModelMap map) {
//		return "TrainGator/userAccomplished";
//	}
//	
//	@RequestMapping(value="/userAttendance", method=RequestMethod.GET)
//	public String userAttendance(HttpServletRequest request, ModelMap map) {
//		
//		return "TrainGator/userAttendance";
//	}
//	
//	@RequestMapping(value="/userCff", method=RequestMethod.GET)
//	public String userCff(HttpServletRequest request, ModelMap map) {
//		return "TrainGator/userCff";
//	}
//	
//	@RequestMapping(value="/submitUserCff", method=RequestMethod.POST)
//	public String submitUserCff(HttpServletRequest request, ModelMap map) {
//		String[] cffAnswer = new String[3];
//		cffAnswer[0] = request.getParameter("customRadio1");
//		cffAnswer[1] = request.getParameter("customRadio2");
//		cffAnswer[2] = request.getParameter("customRadio3");
//		
//		MainService.submitUserCff(cffAnswer);
//
//		return "TrainGator/userCff";
//	}
//	
//	
//	
//	@RequestMapping(value="/userFff", method=RequestMethod.GET)
//	public String userFff(HttpServletRequest request, ModelMap map) {
//		return "TrainGator/userFff";
//	}
//	
//	@RequestMapping(value="/submitUserFff", method=RequestMethod.POST)
//	public String submitUserFff(HttpServletRequest request, ModelMap map) {
//		String[] userFffAnswer = new String[11];
//		userFffAnswer[0] = request.getParameter("Q12");
//		userFffAnswer[1] = request.getParameter("Q13");
//		userFffAnswer[2] = request.getParameter("Q14");
//		userFffAnswer[3] = request.getParameter("Q15");
//		userFffAnswer[4] = request.getParameter("Q16");
//		userFffAnswer[5] = request.getParameter("Q17");
//		userFffAnswer[6] = request.getParameter("Q18");
//		userFffAnswer[7] = request.getParameter("Q19");
//		userFffAnswer[8] = request.getParameter("Q20");
//		userFffAnswer[9] = request.getParameter("Q21");
//		userFffAnswer[10] = request.getParameter("Q22");
//		
//		MainService.submitFff(userFffAnswer);
//		
//		
//		
//		return "TrainGator/userFff";
//	}
//	
//	@RequestMapping(value="/userJoined", method=RequestMethod.GET)
//	public String userJoined(HttpServletRequest request, ModelMap map) {
//		return "TrainGator/userJoined";
//	}
//	
//	@RequestMapping(value="/userRecommended", method=RequestMethod.GET)
//	public String userRecommended(HttpServletRequest request, ModelMap map) {
//		return "TrainGator/userRecommended";
//	}
//	
//	@RequestMapping("/userSaf")
//	public String userSaf(HttpServletRequest request, ModelMap map) {
//		return "TrainGator/userSaf";
//	}
//	@RequestMapping(value="/userSaf",method=RequestMethod.POST)
//	public String skillsAssessment(HttpServletRequest request, ModelMap map) {
//		int id = 1;
//		int ansId = Integer.parseInt(request.getParameter("ansId"));
//		int userId = Integer.parseInt(request.getParameter("userId"));
//		String restype = request.getParameter("restype");
//		String[] results = new String[60];
//		for(int i=1;i<54;i++){
//			if(request.getParameter(Integer.toString(i))!=null)
//			results[i] = request.getParameter(Integer.toString(i));
//		}
//		List<TblSubcat> SubCatList = MainService.getSubCategoriesByFormId(id);
//		MainService.addSAF(SubCatList,results,ansId,userId,restype);
//		
//		return "TrainGator/userSaf";
//	}	
//	
//	@RequestMapping(value="/userTeaf", method=RequestMethod.GET)
//	public String loadUserTeaf(HttpServletRequest request, ModelMap map) {
//		List<TblCat> teafQuestions = MainService.getTeafQuestions();
//		map.addAttribute("questions", teafQuestions);
//		return "TrainGator/userTeaf";
//	}
//	
//	@RequestMapping(value="/submitAnswerTeaf", method=RequestMethod.POST)
//	public String submitAnswerTeaf(HttpServletRequest request, ModelMap map) {
//		String[] teafAnswer = new String[8];
//		
//		teafAnswer[0] = request.getParameter("q1teaf");
//		teafAnswer[1] = request.getParameter("q2teaf");
//		teafAnswer[2] = request.getParameter("q3teaf");
//		teafAnswer[3] = request.getParameter("q4teaf");
//		teafAnswer[4] = request.getParameter("q5teaf");
//		teafAnswer[5] = request.getParameter("q6teaf");
//		teafAnswer[6] = request.getParameter("q7teaf");
//		teafAnswer[7] = request.getParameter("q8teaf");
//		
//		MainService.submitAnswerTeaf(teafAnswer);		
//		return "TrainGator/userTeaf";
//	}
//	@RequestMapping(value="/userTna", method=RequestMethod.GET)
//	public String userTna(HttpServletRequest request, ModelMap map) {
//		return "TrainGator/userTna";
//	}
//
//	@RequestMapping("/userAll")
//	public String loadUserAll(){
//		return "userAll";
//	}
//	@RequestMapping(value="/userUpcoming", method=RequestMethod.GET)
//	public String userUpcoming(HttpServletRequest request, ModelMap map) {
//		return "TrainGator/userUpcoming";
//	}
//	


}

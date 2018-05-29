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

import java.util.List;

import com.springboot.entities.TblCat;
import com.springboot.entities.TblParticipant;
import com.springboot.entities.TblSubcat;
import com.springboot.entities.TblTraining;
import com.springboot.entities.TblUser;
import com.springboot.service.MainService;

@Controller
@RequestMapping("")
@SessionAttributes({"userID","fname","lname","usertype","trainId"})//mapped variables that is declared here will auto acquire the data, can be accessed every page
public class MainController {
	
	@Autowired
	private MainService MainService;
	

	@RequestMapping(value="/adminAddFacilitator", method=RequestMethod.POST)
	public String adminAddFacilitator(HttpServletRequest request,ModelMap map) {
		int trainId = Integer.parseInt(request.getParameter("train_id"));
		String[] facilist = request.getParameterValues("facilist");
		String[] partlist = request.getParameterValues("partlist");
//		System.out.println(Arrays.toString(facilist));
//		System.out.println(Arrays.toString(partlist));
		MainService.addParticipant(partlist,trainId);//for clarification
		MainService.addFacilitator(facilist,trainId);
		
		//redirected to adminupcoming with mapped datas
		List<Object> list = new ArrayList<>();
		list = MainService.getUpcomingTraining();
		map.addAttribute("list",list);
		return "TrainGator/adminUpcoming";
	}
	
	@RequestMapping(value="/adminAddParticipant", method=RequestMethod.GET)
	public String adminAddParticipant(HttpServletRequest request, ModelMap map) {
		return "TrainGator/adminAddParticipant";
	}
	
	@RequestMapping(value="/adminAttendance", method=RequestMethod.GET)
	public String adminAttendance(HttpServletRequest request, ModelMap map) {
		List<TblUser> confirmedList = MainService.getConfirmedParticipants();	
		map.addAttribute("confirmedList", confirmedList);	
		return "TrainGator/adminAttendance";
	}
	
	@RequestMapping(value="/submitAttendance", method=RequestMethod.POST)
	public String adminConfirmAttendance(HttpServletRequest request, ModelMap map) {
		String[] userId =  request.getParameterValues("confirmedAttend");
		for(int i=0; i<userId.length; i++){
			MainService.confirmAttendance(userId[i]); 
		}
		
//		MainService.removeParticipantById(userId);
		
		return adminAttendance(request,map);
		
	}
	
	@RequestMapping(value="/adminCff", method=RequestMethod.GET)
	public String adminCff(HttpServletRequest request, ModelMap map) {
		return "TrainGator/adminCff";
	}
	
	@RequestMapping("/adminConcluded")
	public String loadadminConcluded( ModelMap map) {
		List<Object> trainlist = MainService.getConcludedTraining();
		map.addAttribute("list",trainlist);
		return "TrainGator/adminConcluded";
	}
	@RequestMapping(value="/adminConcluded", method=RequestMethod.POST)
	public String adminConcluded(HttpServletRequest request, ModelMap map) {
		return "TrainGator/adminConcluded";
	}
	
	@RequestMapping("/adminloadCreateEvent")
	public String loadadminCreateEvent(ModelMap map) {
		List<TblSubcat> list = MainService.getSubCategoriesByFormId(1);
		map.addAttribute("list",list);
		return "TrainGator/adminCreateEvent";
	}
	@RequestMapping(value="/adminCreateEvent",method=RequestMethod.GET)
	public String editadminCreateEvent(HttpServletRequest request,ModelMap map) {
		int trainId = Integer.parseInt(request.getParameter("trainId"));
		TblTraining train =  (TblTraining) MainService.getTrainingById(trainId);
		List<TblSubcat> list = MainService.getSubCategoriesByFormId(1);
		map.addAttribute("train",train);
		map.addAttribute("list",list);
		return "TrainGator/adminCreateEvent";
	}
	@RequestMapping(value="/adminCreateEvent", method=RequestMethod.POST)
	public String adminCreateEvent(HttpServletRequest request, ModelMap map) throws ParseException {		
		Date train_datestart = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("train_datestart"));
		Date train_dateend = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("train_dateend"));
		String train_timestart = request.getParameter("train_timestart");
		String train_timeend = request.getParameter("train_timeend");
		String train_courseoutline = request.getParameter("train_courseoutline");
		String train_cat = request.getParameter("train_cat");
		String train_name = request.getParameter("train_name");
		
		if(request.getParameter("trainId")==""){//if trainid is empty, means it is a new entry
			int train =  MainService.addTraining(train_name,train_cat,train_datestart, train_dateend, train_timestart, train_timeend, train_courseoutline);
			List<TblUser> users = MainService.getUsers();
			map.addAttribute("users",users);
			map.addAttribute("trainID",train);
			return "TrainGator/adminAddFacilitator";
		}else{//update training
			int trainId = Integer.parseInt(request.getParameter("trainId"));
			MainService.updateTraining(train_name,train_cat,train_datestart, train_dateend, train_timestart, train_timeend, train_courseoutline,trainId);
			List<TblUser> users = MainService.getUsers();
			map.addAttribute("users",users);
			map.addAttribute("trainID",trainId);
			return "TrainGator/adminAddFacilitator";
		}
	}
	
	
	@RequestMapping(value="/adminEventComments", method=RequestMethod.GET)
	public String adminEventComments(HttpServletRequest request, ModelMap map) {
		return "TrainGator/adminEventComments";
	}
	
	@RequestMapping(value="/adminFacilitatorComments", method=RequestMethod.GET)
	public String adminFacilitatorComments(HttpServletRequest request, ModelMap map) {
		return "TrainGator/adminFacilitatorComments";
	}
	
	@RequestMapping(value="/adminFff", method=RequestMethod.GET)
	public String adminFff(HttpServletRequest request, ModelMap map) {
		return "TrainGator/adminFff";
	}
	
	@RequestMapping(value="/adminOngoing", method=RequestMethod.GET)
	public String adminOngoing(HttpServletRequest request, ModelMap map) {
		return "TrainGator/adminOngoing";
	}
	
	@RequestMapping("/adminTeaf")
	public String loadAdminTeaf(ModelMap map) {
		List<TblCat> teaf = MainService.getCategoriesByFormId(2);
		map.addAttribute("teafs",teaf);
		return "TrainGator/adminTeaf";
	}
	@RequestMapping(value="/adminTeaf", method=RequestMethod.POST)
	public String AdminTeaf(HttpServletRequest request, ModelMap map) {
		String[] id = request.getParameterValues("catid");
		String[] quest = request.getParameterValues("question");
		MainService.updateTeaf(id,quest);
		return loadAdminTeaf(map);
	}
	

	@RequestMapping(value="/submitQuestions", method=RequestMethod.POST)
	public String submitQuestions(HttpServletRequest request, ModelMap map) {
		String[] ques = new String[7];
		ques[0] = request.getParameter("ques1");
		ques[1] = request.getParameter("ques2");
		ques[2] = request.getParameter("ques3");
		ques[3] = request.getParameter("ques4");
		ques[4] = request.getParameter("ques5");
		ques[5] = request.getParameter("ques6");
		ques[6] = request.getParameter("ques7");
		

		
		MainService.submitTeafQuestions(ques);
		return "TrainGator/adminTeaf";
	}
		
	@RequestMapping(value="/adminTrainingDetails", method=RequestMethod.GET)
	public String loadTrainingDetailsScreen(HttpServletRequest request, ModelMap map) {
//		List<TblUser> recommendedList = MainService.getRecommendedParticipants();
		String trainId = request.getParameter("trainId");
		Object trainingdetails = MainService.getTrainingById(Integer.parseInt(trainId));
		List<Object> participants = MainService.getParticipantsById(Integer.parseInt(trainId));
		List<Object> facilitators = MainService.getFacilitatorsById(Integer.parseInt(trainId));
		map.addAttribute("trainId",trainId);
		map.addAttribute("trainingdetails", trainingdetails);
		map.addAttribute("participants", participants);
		map.addAttribute("facilitators", facilitators);
//		map.addAttribute("recommendedList", recommendedList);	 to work on
		return "TrainGator/adminTrainingDetails";	
	}
	
	@RequestMapping(value="/removeParticipant",method=RequestMethod.POST)
	public String removeParticipantById(HttpServletRequest request, ModelMap map) {
		String[] id = request.getParameterValues("partipantId");
//		System.out.println(request.getParameter("trainid")+ "aaaaaaaaaaaaaa");
		String trainId = request.getParameter("trainId");
		MainService.removeParticipantById(id,Integer.parseInt(trainId));
		//remove then display again the details
		Object trainingdetails = MainService.getTrainingById(Integer.parseInt(trainId));
		List<Object> participants = MainService.getParticipantsById(Integer.parseInt(trainId));
		List<Object> facilitators = MainService.getFacilitatorsById(Integer.parseInt(trainId));
		map.addAttribute("trainId",trainId);
		map.addAttribute("trainingdetails", trainingdetails);
		map.addAttribute("participants", participants);
		map.addAttribute("facilitators", facilitators);
		map.addAttribute("trainId",trainId);
		
		return "TrainGator/adminTrainingDetails";
	}
	
	@RequestMapping(value="/insertParticipant",method=RequestMethod.POST)
	public String addParticipant(HttpServletRequest request, ModelMap map) {
		String[] userId =  request.getParameterValues("userRecommended");
		int trainId =  Integer.parseInt(request.getParameter("train_id"));
//		MainService.addParticipant(userId, trainId); // to work on
		return  loadTrainingDetailsScreen(request, map);
	}
	
	@RequestMapping("/adminUpcoming")
	public String loadadminUpcoming(ModelMap map) {
		List<Object> list = MainService.getUpcomingTraining();
//		for(Object i:list){
//			System.out.println(i);
//		}
//		list = MainService.getUpcomingTraining();
		map.addAttribute("list",list);
		return "TrainGator/adminUpcoming";
	}
	@RequestMapping(value="/adminUpcoming", method=RequestMethod.POST)
	public String adminUpcoming(HttpServletRequest request, ModelMap map) {
		return "TrainGator/adminUpcoming";
	}
	
	@RequestMapping(value="/generalRecoverPassword", method=RequestMethod.GET)
	public String generalRecoverPassword(HttpServletRequest request, ModelMap map) {
		return "TrainGator/generalRecoverPassword";
	}
	
	@RequestMapping("/generalSignin")
	public String generalSigninGet(HttpServletRequest request, ModelMap map) {
		return "TrainGator/generalSignin";
	}
	
	@RequestMapping(value="/generalSignin", method=RequestMethod.POST)
	public String generalSigninPost(HttpServletRequest request, ModelMap map) {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String error = "Invalid Email or Password";
		TblUser user = (TblUser)MainService.checkUser(email,password);
		if(user!=null){
			map.addAttribute("userID",user.getUserId());
			map.addAttribute("fname",user.getUserFname());
			map.addAttribute("lname",user.getUserLname());
			map.addAttribute("usertype",user.getUserType());
			if(user.getUserType().equals("administrator"))
				return "TrainGator/adminOngoing";
			else
				return "TrainGator/userJoined";
			}
		else{
			map.addAttribute("error",error);
			return "TrainGator/generalSignin";
		}
	}
	
	@RequestMapping("/generalSignup")
	public String loadgeneralSignup() {
		return "TrainGator/generalSignup";
	}
	
	@RequestMapping(value="/generalSignup", method=RequestMethod.POST)
	public String generalSignup(HttpServletRequest request, ModelMap map) {
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String type = request.getParameter("role");
		MainService.addUser(fname,lname,email,password,type);
		return "TrainGator/generalSignup";
	}
	
	@RequestMapping(value="/userAccomplished", method=RequestMethod.GET)
	public String userAccomplished(HttpServletRequest request, ModelMap map) {
		return "TrainGator/userAccomplished";
	}
	
	@RequestMapping(value="/userAttendance", method=RequestMethod.GET)
	public String userAttendance(HttpServletRequest request, ModelMap map) {
		
		return "TrainGator/userAttendance";
	}
	
	@RequestMapping(value="/userCff", method=RequestMethod.GET)
	public String userCff(HttpServletRequest request, ModelMap map) {
		return "TrainGator/userCff";
	}
	
	@RequestMapping(value="/userFff", method=RequestMethod.GET)
	public String userFff(HttpServletRequest request, ModelMap map) {
		return "TrainGator/userFff";
	}
	
	@RequestMapping(value="/userJoined", method=RequestMethod.GET)
	public String userJoined(HttpServletRequest request, ModelMap map) {
		return "TrainGator/userJoined";
	}
	
	@RequestMapping(value="/userRecommended", method=RequestMethod.GET)
	public String userRecommended(HttpServletRequest request, ModelMap map) {
		return "TrainGator/userRecommended";
	}
	
	@RequestMapping("/userSaf")
	public String userSaf(HttpServletRequest request, ModelMap map) {
		return "TrainGator/userSaf";
	}
	@RequestMapping(value="/userSaf",method=RequestMethod.POST)
	public String skillsAssessment(HttpServletRequest request, ModelMap map) {
		int id = 1;
		int ansId = Integer.parseInt(request.getParameter("ansId"));
		int userId = Integer.parseInt(request.getParameter("userId"));
		String restype = request.getParameter("restype");
		String[] results = new String[60];
		for(int i=1;i<54;i++){
			if(request.getParameter(Integer.toString(i))!=null)
			results[i] = request.getParameter(Integer.toString(i));
		}
		List<TblSubcat> SubCatList = MainService.getSubCategoriesByFormId(id);
		MainService.addSAF(SubCatList,results,ansId,userId,restype);
		
		return "TrainGator/userSaf";
	}	
	
	@RequestMapping(value="/userTeaf", method=RequestMethod.GET)
	public String loadUserTeaf(HttpServletRequest request, ModelMap map) {
		List<TblCat> teafQuestions = MainService.getTeafQuestions();
		map.addAttribute("questions", teafQuestions);
		return "TrainGator/userTeaf";
	}
	
	@RequestMapping(value="/submitAnswerTeaf", method=RequestMethod.POST)
	public String submitAnswerTeaf(HttpServletRequest request, ModelMap map) {
		String[] teafAnswer = new String[8];
		
		teafAnswer[0] = request.getParameter("q1teaf");
		teafAnswer[1] = request.getParameter("q2teaf");
		teafAnswer[2] = request.getParameter("q3teaf");
		teafAnswer[3] = request.getParameter("q4teaf");
		teafAnswer[4] = request.getParameter("q5teaf");
		teafAnswer[5] = request.getParameter("q6teaf");
		teafAnswer[6] = request.getParameter("q7teaf");
		teafAnswer[7] = request.getParameter("q8teaf");
		
		MainService.submitAnswerTeaf(teafAnswer);		
		return "TrainGator/userTeaf";
	}
	@RequestMapping(value="/userTna", method=RequestMethod.GET)
	public String userTna(HttpServletRequest request, ModelMap map) {
		return "TrainGator/userTna";
	}

	@RequestMapping(value="/signin",method=RequestMethod.POST)
	public String signin(HttpServletRequest request, ModelMap map) {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String error = "Invalid Email or Password";
		TblUser user = (TblUser)MainService.checkUser(email,password);
		if(user!=null){
			map.addAttribute("userID",user.getUserId());
			map.addAttribute("fname",user.getUserFname());
			map.addAttribute("lname",user.getUserLname());
			map.addAttribute("usertype",user.getUserType());
			if(user.getUserType().equals("administrator"))
				return "adminAll";
			else
				return "userAll";
			}
		else{
			map.addAttribute("error",error);
			return "signin";
		}
	}
	@RequestMapping("/userAll")
	public String loadUserAll(){
		return "userAll";
	}
	@RequestMapping(value="/userUpcoming", method=RequestMethod.GET)
	public String userUpcoming(HttpServletRequest request, ModelMap map) {
		return "TrainGator/userUpcoming";
	}
	

//	@RequestMapping(value="/tnaform",method=RequestMethod.GET)
//	public String tnaform(HttpServletRequest request, ModelMap map) {
//		return "tnaform";
//	}
	
//	@RequestMapping(value="/userDone",method=RequestMethod.GET)
//	public String userDone(HttpServletRequest request, ModelMap map) {
//		return "userDone";
//	}
	
//	@RequestMapping(value="/userOngoing",method=RequestMethod.GET)
//	public String userOngoing(HttpServletRequest request, ModelMap map) {
//		return "userOngoing";
//	}
	
//	@RequestMapping(value="/userRecommended",method=RequestMethod.GET)
//	public String userRecommended(HttpServletRequest request, ModelMap map) {
//		return "userRecommended";
//	}
	
//	@RequestMapping(value="/userUpcoming",method=RequestMethod.GET)
//	public String userUpcoming(HttpServletRequest request, ModelMap map) {
//		return "userUpcoming";
//	}
	
//	@RequestMapping(value="/userAll",method=RequestMethod.GET)
//	public String userAll(HttpServletRequest request, ModelMap map) {
//		return "userAll";
//	}	
	
//	@RequestMapping(value="/trainingEvents",method=RequestMethod.GET)
//	public String trainingEvents(HttpServletRequest request, ModelMap map) {
//		return "adminAll";
//	}
	
//	@RequestMapping(value="/adminAll",method=RequestMethod.GET)
//	public String adminAll(HttpServletRequest request, ModelMap map) {
//		return "adminAll";
//	}
	
//	@RequestMapping(value="/adminConcluded",method=RequestMethod.GET)
//	public String adminDone(HttpServletRequest request, ModelMap map) {
//		return "TrainGator/adminConcluded";
//	}
	
//	@RequestMapping(value="/adminOngoing",method=RequestMethod.GET)
//	public String adminOngoing(HttpServletRequest request, ModelMap map) {
//		return "adminOngoing";
//	}
	
//	@RequestMapping(value="/adminUpcoming",method=RequestMethod.GET)
//	public String adminUpcoming(HttpServletRequest request, ModelMap map) {
//		return "adminUpcoming";
//	}
	
//	@RequestMapping(value="adminAttendance",method=RequestMethod.GET)
//	public String attendance(HttpServletRequest request, ModelMap map) {
//		return "TrainGator/adminAttendance";
//	}
	
//	@RequestMapping(value="/cff",method=RequestMethod.GET)
//	public String cff(HttpServletRequest request, ModelMap map) {
//		return "cff";
//	}
	
//	@RequestMapping("/createEvent")
//	public String loadcreateEvent() {
//		return "createEvent";
//	}
	
//	@RequestMapping(value="/adminCreateEvent",method=RequestMethod.POST)
//	public String createEvent(HttpServletRequest request, ModelMap map) throws ParseException {
//		Date train_datestart = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("train_datestart"));
//		Date train_dateend = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("train_dateend"));
//		String train_timestart = request.getParameter("train_timestart");
//		String train_timeend = request.getParameter("train_timeend");
//		String train_courseobjective = request.getParameter("train_courseobjective");
//		String train_courseoutline = request.getParameter("train_courseoutline");
//		int train_faci = Integer.parseInt(request.getParameter("train_faci"));
//		int train_sv = Integer.parseInt(request.getParameter("train_sv"));
//		int train_pt = Integer.parseInt(request.getParameter("train_pt"));
//		
//		MainService.addTraining(train_datestart, train_dateend, train_timestart, train_timeend, train_courseobjective,
//				train_courseoutline, train_faci, train_sv, train_pt);
//
//		return "TrainGator/adminCreateEvent";
//	}
	
//	@RequestMapping(value="/doneEvents",method=RequestMethod.GET)
//	public String doneEvents(HttpServletRequest request, ModelMap map) {
//		return "doneEvents";
//	}
	
//	@RequestMapping(value="/faciComments",method=RequestMethod.GET)
//	public String faciComments(HttpServletRequest request, ModelMap map) {
//		return "faciComments";
//	}
	
//	@RequestMapping(value="/profile",method=RequestMethod.GET)
//	public String profile(HttpServletRequest request, ModelMap map) {
//		return "profile";
//	}
	
//	@RequestMapping(value="/recoverPassword",method=RequestMethod.GET)
//	public String recoverPassword(HttpServletRequest request, ModelMap map) {
//		return "recoverPassword";
//	}
	
//	@RequestMapping(value="/recoverUsername",method=RequestMethod.GET)
//	public String recoverUsername(HttpServletRequest request, ModelMap map) {
//		return "recoverUsername";
//	}
	
//	@RequestMapping("/signin")
//	public String loadsignin(HttpServletRequest request, ModelMap map) {
//		return "signin";
//	}
	
//	@RequestMapping(value="/signin",method=RequestMethod.POST)
//	public String signin(HttpServletRequest request, ModelMap map) {
//		String email = request.getParameter("email");
//		String password = request.getParameter("password");
//		String error = "Invalid Email or Password";
//		TblUser user = (TblUser)MainService.checkUser(email,password);
//		
//		if(user!=null){
//			map.addAttribute("userID",user.getUserId());
//			map.addAttribute("fname",user.getUserFname());
//			map.addAttribute("lname",user.getUserLname());
//			map.addAttribute("usertype",user.getUserType());
//			if(user.getUserType().equals("administrator"))
//				return "adminAll";
//			else
//				return "userAll";
//			}
//		else{
//			map.addAttribute("error",error);
//			return "signin";
//		}
//	}
	
//	@RequestMapping("/userAll")
//	public String loadUserAll(){
//		return "userAll";
//	}
	
//	@RequestMapping(value="/userAll",method=RequestMethod.POST)
//	public String loaduserall(HttpServletRequest request, ModelMap map) {
//		
//		String uname = request.getParameter("username");
//		String pword = request.getParameter("password");
//		
//		if(uname.equals("admin") && pword.equals("admin")){
//			return "userAll";
//		}
//		else {
//			return "signin";
//		}
//		
//	}
	
//	@RequestMapping("/signup")
//	public String loadsignup() {
//		return "signup";
//	}
	
//	@RequestMapping(value="/signup",method=RequestMethod.POST)
//	public String signup(HttpServletRequest request, ModelMap map) {
//		String fname = request.getParameter("fname");
//		String lname = request.getParameter("lname");
//		String email = request.getParameter("email");
//		String password = request.getParameter("password");
//		String type = request.getParameter("role");
//		MainService.addUser(fname,lname,email,password,type);
//		
//		return "signup";
//	}
	
//	@RequestMapping(value="/skillsAssessment",method=RequestMethod.GET)
//	public String skillsAssessment(HttpServletRequest request, ModelMap map) {
//		int id = 1;
//		List<TblCat> CatList = MainService.getCategoriesByFormId(id);
//		List<TblSubcat> SubCatList = MainService.getSubCategoriesByFormId(id);
//		map.addAttribute("CatList", CatList);
//		map.addAttribute("SubCatList", SubCatList);
//		return "skillsAssessment";
//	}	
	
//	@RequestMapping(value="/teaf",method=RequestMethod.GET)
//	public String teaf(HttpServletRequest request, ModelMap map) {
//		int id = 2;
//		List<TblCat> CatList = MainService.getCategoriesByFormId(id);
//		List<TblSubcat> SubCatList = MainService.getSubCategoriesByFormId(id);
//		map.addAttribute("CatList", CatList);
//		map.addAttribute("SubCatList", SubCatList);
//		return "teaf";
//	}
	
//	@RequestMapping(value = "/trainingDetails", method = RequestMethod.GET)
//	public String loadTrainingDetailsScreen(HttpServletRequest request, ModelMap map) {
//		List<TblUser> participantList = MainService.getParticipants();
//		map.addAttribute("participantList", participantList);	
//		return "trainingDetails";
//	}
	
//	@RequestMapping(value="/insertParticipant",method=RequestMethod.POST)
//	public String addParticipant(HttpServletRequest request, ModelMap map) {
//				
//		int userID = Integer.parseInt(request.getParameter("userRecommended"));
//	
//		MainService.addParticipant(userID);
//				
//		return loadTrainingDetailsScreen(request,map);
//	}
	

//	@RequestMapping(value="/deleteParticipant",method=RequestMethod.POST)
//	public String deleteParticipant(HttpServletRequest request, ModelMap map) {
//		String temp = request.getParameter("confirmedUser");		
//		int userID = Integer.parseInt(temp);
//		
//		MainService.removeParticipantById(userID);
//
//		return loadTrainingDetailsScreen(request,map);
//	}


//	@RequestMapping("/list")
//	public String listParticipant(ModelMap map) {
//		List<TblUser> participantList = MainService.getParticipants();
//		map.addAttribute("participantList", participantList);
//		return "trainingDetails";
//	}
}

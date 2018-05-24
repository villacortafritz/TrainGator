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
import org.springframework.web.bind.annotation.SessionAttributes;
import java.util.List;
import com.springboot.entities.TblCat;
import com.springboot.entities.TblSubcat;
import com.springboot.entities.TblUser;
import com.springboot.service.MainService;

@Controller
@RequestMapping("")
@SessionAttributes({"userID","fname","lname","usertype"})//mapped variables that is declared here will auto acquire the data, can be accessed every page
public class MainController {
	
	@Autowired
	private MainService MainService;
	
	@RequestMapping(value="/adminAddFacilitator", method=RequestMethod.GET)
	public String adminAddFacilitator(HttpServletRequest request, ModelMap map) {
		return "TrainGator/adminAddFacilitator";
	}
	
	@RequestMapping(value="/adminAddParticipant", method=RequestMethod.GET)
	public String adminAddParticipant(HttpServletRequest request, ModelMap map) {
		return "TrainGator/adminAddParticipant";
	}
	
	@RequestMapping(value="/adminAttendance", method=RequestMethod.GET)
	public String adminAttendance(HttpServletRequest request, ModelMap map) {
		return "TrainGator/adminAttendance";
	}
	
	@RequestMapping(value="/adminCff", method=RequestMethod.GET)
	public String adminCff(HttpServletRequest request, ModelMap map) {
		return "TrainGator/adminCff";
	}
	
	@RequestMapping(value="/adminConcluded", method=RequestMethod.GET)
	public String adminConcluded(HttpServletRequest request, ModelMap map) {
		return "TrainGator/adminConcluded";
	}
	
	@RequestMapping(value="/adminCreateEvent", method=RequestMethod.GET)
	public String adminCreateEvent(HttpServletRequest request, ModelMap map) {
		return "TrainGator/adminCreateEvent";
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
	
	@RequestMapping(value="/adminTeaf", method=RequestMethod.GET)
	public String adminTeaf(HttpServletRequest request, ModelMap map) {
		return "TrainGator/adminTeaf";
	}
	
	@RequestMapping(value="/adminTrainingDetails", method=RequestMethod.GET)
	public String adminTrainingDetails(HttpServletRequest request, ModelMap map) {
		return "TrainGator/adminTrainingDetails";
	}
	
	@RequestMapping(value="/adminUpcoming", method=RequestMethod.GET)
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
	
	@RequestMapping(value="/generalSignup", method=RequestMethod.GET)
	public String generalSignupGet(HttpServletRequest request, ModelMap map) {
		return "TrainGator/generalSignup";
	}
	
	@RequestMapping(value="/generalSignup", method=RequestMethod.POST)
	public String generalSignupPost(HttpServletRequest request, ModelMap map) {
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String type = request.getParameter("role");
		MainService.addUser(fname,lname,email,password,type);
		return "signup";
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
	public String userTeaf(HttpServletRequest request, ModelMap map) {
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

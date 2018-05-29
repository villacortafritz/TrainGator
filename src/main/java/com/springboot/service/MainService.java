package com.springboot.service;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springboot.entities.TblAttendance;
import com.springboot.entities.TblCat;
import com.springboot.entities.TblFacilitator;
//import com.springboot.entities.TblFacilitator;
import com.springboot.entities.TblFormresult;
import com.springboot.entities.TblParticipant;
import com.springboot.entities.TblSubcat;
import com.springboot.entities.TblTraining;
import com.springboot.entities.TblUser;
import com.springboot.repository.custom.MainRepository;

@Service
public class MainService {
	
	@Autowired
	private MainRepository MainRepository;
	
	@PersistenceContext
	private EntityManager em;

	public boolean addUser(String fname, String lname, String email,
			String password, String type) {
		boolean result = false;
		TblUser user = new TblUser();
		user.setUserFname(fname);
		user.setUserLname(lname);
		user.setUserEmail(email);
		user.setUserPassword(password);
		user.setUserType(type);
		result = MainRepository.addUser(em,user);
		
		return result;
		
	}

	public int addTraining(String train_name, String train_cat, Date train_datestart, Date train_dateend, String train_timestart, String train_timeend,
		String train_courseoutline) {
		TblTraining training = new TblTraining();
		training.setTrainDatestart(train_datestart);
		training.setTrainDateend(train_dateend);
		training.setTrainTimestart(train_timestart);
		training.setTrainTimeend(train_timeend);
		training.setTrainCourseoutline(train_courseoutline);	
		training.setTrainCat(train_cat);
		training.setTrainName(train_name);
		training.setTrainStatus(1);
		return MainRepository.addTraining(em,training);
	}


	public List<TblCat> getCategoriesByFormId(int id) {
		
		return MainRepository.getCategoriesByFormId(em,id);
	}

	public List<TblSubcat> getSubCategoriesByFormId(int id) {	
		
		return MainRepository.getSubCategoriesByFormId(em,id);
	}


	public List<TblUser> getRecommendedParticipants() {
		
			return MainRepository.getRecommendedParticipants(em);
		
	}
	
	public List<TblUser> getConfirmedParticipants() {
		
		return MainRepository.getConfirmedParticipants(em);
	
	}
	public List<TblUser> removeParticipantById(String[] id, int trainid) {
			return MainRepository.removeParticipantById(em, id,trainid);
			
	}

	public Object checkUser(String email, String password) {	
		
		return MainRepository.checkuser(em,email,password);
		
	}

	public void addSAF(List<TblSubcat> subCatList, String[] results, int ansId, int userId, String restype) {	
//		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		for(TblSubcat sub: subCatList) 
		{
		TblFormresult form = new TblFormresult();
		form.setAnsId(ansId);//id sa kung kinsay ga answer, para rani sa peer ug sv
		form.setQuestId(sub.getSubId());
		form.setResData(results[sub.getSubId()]);
		form.setResDate(date);
		form.setResType(restype);
		form.setTrainId(0);//0 if di kinanglan e specify para asa na training
		form.setUserId(userId);//para ka kinsa iyang gi answeran,para ni sa peer
		MainRepository.addSAF(em,form);
		}
	}
	


	public List<TblUser> getUsers() {
		// TODO Auto-generated method stub
		return MainRepository.getUsers(em);
	}

	public void addParticipant(String[] partlist, int trainId) {
		ArrayList<Integer> partId = new ArrayList<Integer>();
		//convert String[] to int[]
		for(String part: partlist) 
		{
			Integer id = new Integer(Integer.parseInt(part));
			partId.add(id);
		}
		for(int part: partId) 
		{
			TblParticipant participant = new TblParticipant();
			participant.setUserId(part);
			participant.setTrainId(trainId);
			MainRepository.addParticipant(em, participant);
		}
	}

	public void addFacilitator(String[] facilist, int trainId) {
		ArrayList<Integer> faciId = new ArrayList<Integer>();
		//convert String[] to int[]
		for(String faci: facilist) 
		{
			Integer id = new Integer(Integer.parseInt(faci));
			faciId.add(id);
		}
		for(int faci: faciId) 
		{
			TblFacilitator facilitator = new TblFacilitator();
			facilitator.setUserId(faci);
			facilitator.setTrainId(trainId);
			MainRepository.addFacilitator(em, facilitator);
		}
	}
	

	
	public void addParticipantPhase2(List<TblUser> part){
		for(TblUser par: part){
			TblParticipant participant = new TblParticipant();
			// TO BE CHANGE IF MANA ANG CONNECTION
			participant.setUserId(par.getUserId());
			participant.setTrainId(101);  // TO BE CHANGE IF MANA ANG CONNECTION
//			participant.setUserFname(par.getUserFname());
//			participant.setUserLname(par.getUserLname());
//			participant.setUserEmail(par.getUserEmail());
//			participant.setUserType(par.getUserType());
			MainRepository.addParticipantPhase2(em,participant);
		}
	}

	public List<Object> getUpcomingTraining() {
		return MainRepository.getUpcomingTraining(em);
	}

	public Object getTrainingById(int trainId) {
		return MainRepository.getTrainingById(em,trainId);
	}

	public List<Object> getParticipantsById(int trainId) {
		// TODO Auto-generated method stub
		return MainRepository.getParticipantsById(em,trainId);
	}

	public List<Object> getFacilitatorsById(int trainId) {
		// TODO Auto-generated method stub
		return MainRepository.getFacilitatorsById(em,trainId);
	}

	public void submitTeafQuestions(String[] ques) {
		// TODO Auto-generated method stub
		
		TblCat quesTeaf[] = new TblCat[7];
		
		for(int i = 0; i < 7 ; i++)
		{
			quesTeaf[i] = new TblCat();
			quesTeaf[i].setCatDesc(ques[i]);
			quesTeaf[i].setFormId(2);
			
		}

		MainRepository.submitTeafQuestions(em,quesTeaf);
		

	}

	public List<TblCat> getTeafQuestions() {
		return MainRepository.getTeafQuestions(em);
		
	}

	public void submitAnswerTeaf(String teafAnswer[]) {
		Date date = new Date();
		TblFormresult ansTeaf[] = new TblFormresult[8];
		for(int i = 0; i <=7 ; i++)
		{
			ansTeaf[i] = new TblFormresult();
			ansTeaf[i].setAnsId(1);
			ansTeaf[i].setUserId(1); //SUBJECT TO CHANGE
			ansTeaf[i].setQuestId(i+1);
			ansTeaf[i].setResDate(date);
			ansTeaf[i].setTrainId(101); //SUBJECT TO CHANGE
			ansTeaf[i].setResData(teafAnswer[i]);
		}
		MainRepository.submitTeafAnswers(em, ansTeaf);

	}

	public void confirmAttendance(String userId, int trainId, int status) {

		Date date = new Date();		
		TblAttendance attend = new TblAttendance();
		attend.setStatus(status);
		attend.setAttDate(date);
		attend.setTrainId(trainId); 
		attend.setUserId(Integer.parseInt(userId));
		MainRepository.submitAttendance(em,attend);

	}

	public String[] getAllParticipantsId(int trainId) {
		
		String[] partIds = MainRepository.getAllParticipantsId(em, trainId);
		
		return partIds;
	}

//	public void checkIfAbsent(String[] userId, int trainId) {
//		 List<String> confirmed = MainRepository.getIds(em,trainId); // contains participant
//		System.out.println("BOGO SA CHECK ABSENT");
//		 Arrays.toString(confirmed.toArray());
//
//		for(int i=0; i<userId.length; i++){
//			
//				if(!confirmed.contains(userId[i])){
//					Date date = new Date();		
//					TblAttendance attend = new TblAttendance();
//					attend.setStatus(1);
//					attend.setAttDate(date);
//					attend.setTrainId(trainId); 
//					attend.setUserId(Integer.parseInt(userId[i]));
//					MainRepository.submitAttendance(em,attend);
//			
//			}
//		}
//
//	}
//	
//	public static boolean contains(String[] arr, String item) {
//	      for (String n : arr) {
//	         if (item == n) {
//	            return true;
//	         }
//	      }
//	      return false;
//	   }


}
	
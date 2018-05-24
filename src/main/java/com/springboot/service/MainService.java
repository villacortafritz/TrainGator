package com.springboot.service;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springboot.entities.TblCat;
import com.springboot.entities.TblFacilitator;
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
		return MainRepository.addTraining(em,training);
	}

	public boolean addParticipant(int userID) {
		// TODO Auto-generated method stub
		boolean result = false;
		TblParticipant participant = new TblParticipant();
		participant.setUserId(userID);
		
		result = MainRepository.addParticipant(em, participant);
		
		return result;
		
	}

	public List<TblCat> getCategoriesByFormId(int id) {
		// TODO Auto-generated method stub
		return MainRepository.getCategoriesByFormId(em,id);
	}

	public List<TblSubcat> getSubCategoriesByFormId(int id) {	
		// TODO Auto-generated method stub
		return MainRepository.getSubCategoriesByFormId(em,id);
	}


	public List<TblUser> getRecommendedParticipants() {
		
			return MainRepository.getRecommendedParticipants(em);
		
	}
	
	public List<TblUser> getConfirmedParticipants() {
		
		return MainRepository.getConfirmedParticipants(em);
	
	}
	public List<TblUser> removeParticipantById(String[] id) {
			return MainRepository.removeParticipantById(em, id);
			
	}

	public Object checkUser(String email, String password) {	
		// TODO Auto-generated method stub
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

	public void addParticipant2(String[] partlist, int trainId) {
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
			MainRepository.addParticipant2(em, participant);
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


}
	
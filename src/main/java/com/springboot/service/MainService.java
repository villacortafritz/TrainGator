package com.springboot.service;

import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springboot.entities.TblCat;
import com.springboot.entities.TblSubcat;
import com.springboot.entities.TblTraining;
import com.springboot.entities.TblFormdetail;
import com.springboot.entities.TblParticipant;
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

	public Object addTraining(Date train_datestart, Date train_dateend, String train_timestart, String train_timeend,
			String train_courseobjective, String train_courseoutline, int train_faci, int train_sv, int train_pt) {
		Object result = false;
		TblTraining training = new TblTraining();
		training.setTrainDatestart(train_datestart);
		training.setTrainDateend(train_dateend);
		training.setTrainTimestart(train_timestart);
		training.setTrainTimeend(train_timeend);
		training.setTrainCourseobjective(train_courseobjective);
		training.setTrainCourseoutline(train_courseoutline);
		training.setTrainFaci(train_faci);
		training.setTrainSv(train_sv);
		training.setTrainPt(train_pt);
		result = MainRepository.addTraining(em,training);
		
		return result;
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

//	public boolean addTrainingParticipantRating(int trainParVal) {
//		
//		boolean result = false;
//		TblFormdetail formDetail = new TblFormdetail();
//		formDetail.setUserId(userId);
//		
//		
//		return result;
//		
//		
//
//
//		
//	}
	public List<TblUser> getParticipants() {
		
			return MainRepository.getParticipants(em);
		
	}

	public Object checkUser(String email, String password) {	
		// TODO Auto-generated method stub
		return MainRepository.checkuser(em,email,password);
		
	}

}
	
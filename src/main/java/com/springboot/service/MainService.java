package com.springboot.service;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springboot.entities.Student;
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

	public boolean addParticipant(String name) {
		// TODO Auto-generated method stub
		boolean result = false;
		TblParticipant participant = new TblParticipant();
		participant.setPartId(2);
		participant.setUserId(20150);
		
		result = MainRepository.addParticipant(em, participant);
		
		return result;
		
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

}
	
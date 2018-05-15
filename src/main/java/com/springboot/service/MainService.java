package com.springboot.service;

import java.util.Date;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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

	public Object addTraining(Date train_datestart, Date train_dateend, String train_timestart, String train_timeend,
			String train_courseobjective, String train_courseoutline, int train_faci, int train_sv, int train_pt) {
		// TODO Auto-generated method stub
		Object result = false;
		TblTraining training = new TblTraining();
		training.setTrainDatestart(train_datestart);
		training.setTrainDateend(train_dateend);
		training.setTrainTimestart(train_timestart);
//		training.setTrainTimeend(train_timeend);
//		training.setTrainCourseobjective(train_courseobjective);
		training.setTrainCourseoutline(train_courseoutline);
		training.setTrainFaci(train_faci);
//		training.setTrainSv(train_sv);
//		training.setTrainPt(train_pt);
		result = MainRepository.addTraining(em,training);
		
		return result;
	}

}
	
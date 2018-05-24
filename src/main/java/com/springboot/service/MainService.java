package com.springboot.service;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springboot.entities.TblCat;
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

	public Object addTraining(Date train_datestart, Date train_dateend, String train_timestart, String train_timeend,
		String train_courseoutline, String train_courseobjective, int train_faci, int train_sv, int train_pt) {
		Object result = false;
		TblTraining training = new TblTraining();
		training.setTrainDatestart(train_datestart);
		training.setTrainDateend(train_dateend);
		training.setTrainTimestart(train_timestart);
		training.setTrainTimeend(train_timeend);
		training.setTrainCourseoutline(train_courseoutline);
		training.setTrainCourseobjective(train_courseobjective);
		training.setTrainFaci(train_faci);
		training.setTrainSv(train_sv);

		result = MainRepository.addTraining(em,training);
		
		return result;
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
	
	public List<TblUser> removeParticipantById(String[] id) {
		return MainRepository.removeParticipantById(em, id);
		
	}

	public void addParticipant(String[] userId) {
		MainRepository.addParticipant(em, userId);
		
	}
	
	public void addParticipantPhase2(List<TblUser> part){
	
		
		for(TblUser par: part){
			TblParticipant participant = new TblParticipant();
			// TO BE CHANGE IF MANA ANG CONNECTION
			participant.setUserId(par.getUserId());
			participant.setTrainId(101);  // TO BE CHANGE IF MANA ANG CONNECTION
			participant.setUserFname(par.getUserFname());
			participant.setUserLname(par.getUserLname());
			participant.setUserEmail(par.getUserEmail());
			participant.setUserType(par.getUserType());
			MainRepository.addParticipantPhase2(em,participant);
		}
		
		
		
	}
}
	
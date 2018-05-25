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
	public List<TblUser> removeParticipantById(String[] id) {
			return MainRepository.removeParticipantById(em, id);
			
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

//	public void addFacilitator(String[] facilist, int trainId) {
//		ArrayList<Integer> faciId = new ArrayList<Integer>();
//		//convert String[] to int[]
//		for(String faci: facilist) 
//		{
//			Integer id = new Integer(Integer.parseInt(faci));
//			faciId.add(id);
//		}
//		for(int faci: faciId) 
//		{
//			TblFacilitator facilitator = new TblFacilitator();
//			facilitator.setUserId(faci);
//			facilitator.setTrainId(trainId);
//			MainRepository.addFacilitator(em, facilitator);
//		}
//	}
	
	public void addParticipant(String[] userId) {
		MainRepository.addParticipant(em, userId);
		
	}
	
	public void addParticipantPhase2(List<TblUser> part){
		for(TblUser par: part){
			TblParticipant participant = new TblParticipant();
			// TO BE CHANGE IF MANA ANG CONNECTION
			participant.setUserId(par.getUserId());
			participant.setTrainId(101);  // TO BE CHANGE IF MANA ANG CONNECTION
			MainRepository.addParticipantPhase2(em,participant);
		}
		
	}

	public void submitTeafQuestions(String question1, String question2,
			String question3, String question4, String question5,
			String question6, String question7) {
		// TODO Auto-generated method stub
		
		TblCat quesTeaf[] = new TblCat[7];
		
		for(int i = 0; i < 7 ; i++)
		{
			quesTeaf[i] = new TblCat();
		}
		
		quesTeaf[0].setFormId(4);
		quesTeaf[0].setCatDesc(question1);
		quesTeaf[1].setFormId(4);
		quesTeaf[1].setCatDesc(question2);
		quesTeaf[2].setFormId(4);
		quesTeaf[2].setCatDesc(question3);
		quesTeaf[3].setFormId(4);
		quesTeaf[3].setCatDesc(question4);
		quesTeaf[4].setFormId(4);
		quesTeaf[4].setCatDesc(question5);
		quesTeaf[5].setFormId(4);
		quesTeaf[5].setCatDesc(question6);
		quesTeaf[6].setFormId(4);
		quesTeaf[6].setCatDesc(question7);
		
		
		
		MainRepository.submitTeafQuestions(em,quesTeaf);
		

	}

	public List<TblCat> getTeafQuestions() {
		return MainRepository.getTeafQuestions(em);
		
	}

	public void submitAnswerTeaf(int q1Answer, int q2Answer, int q3Answer,
			int q4Answer, int q5Answer, int q6Answer, String q7Answer,
			String q8Answer) {
		Date date = new Date();
		TblFormresult ansTeaf[] = new TblFormresult[8];
		for(int i = 0; i < 8 ; i++)
		{
			ansTeaf[i] = new TblFormresult();
		}
		
		ansTeaf[0].setResData(Integer.toString(q1Answer));
		ansTeaf[0].setQuestId(1);
		ansTeaf[0].setAnsId(1); // ILISAN PA NI BASTA NANA ANG ACTIVE USER NA AMBOT LANG
		ansTeaf[0].setResDate(date);
		ansTeaf[0].setTrainId(101); // ILISANAN PANI HUHU
		
		ansTeaf[1].setResData(Integer.toString(q2Answer));
		ansTeaf[1].setQuestId(2);
		ansTeaf[1].setAnsId(1); 
		ansTeaf[1].setResDate(date);
		ansTeaf[1].setTrainId(101); 
		
		ansTeaf[2].setResData(Integer.toString(q3Answer));
		ansTeaf[2].setQuestId(3);
		ansTeaf[2].setAnsId(1); 
		ansTeaf[2].setResDate(date);
		ansTeaf[2].setTrainId(101);
		
		ansTeaf[3].setResData(Integer.toString(q4Answer));
		ansTeaf[3].setQuestId(4);
		ansTeaf[3].setAnsId(1); 
		ansTeaf[3].setResDate(date);
		ansTeaf[3].setTrainId(101); 
		
		ansTeaf[4].setResData(Integer.toString(q5Answer));
		ansTeaf[4].setQuestId(5);
		ansTeaf[4].setAnsId(1); 
		ansTeaf[4].setResDate(date);
		ansTeaf[4].setTrainId(101); 
		
		ansTeaf[5].setResData(Integer.toString(q6Answer));
		ansTeaf[5].setQuestId(6);
		ansTeaf[5].setAnsId(1); 
		ansTeaf[5].setResDate(date);
		ansTeaf[5].setTrainId(101);
		
		ansTeaf[6].setResData(q7Answer);
		ansTeaf[6].setQuestId(7);
		ansTeaf[6].setAnsId(1); 
		ansTeaf[6].setResDate(date);
		ansTeaf[6].setTrainId(101);
		
		ansTeaf[7].setResData(q8Answer);
		ansTeaf[7].setQuestId(8);
		ansTeaf[7].setAnsId(1); 
		ansTeaf[7].setResDate(date);
		ansTeaf[7].setTrainId(101);
		
		
		MainRepository.submitTeafAnswers(em, ansTeaf);
		


		
		
		
		
		
		
		
	}

}
	
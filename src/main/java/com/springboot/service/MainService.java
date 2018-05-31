package com.springboot.service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springboot.entities.TblAnswersaf;
import com.springboot.entities.TblAttendance;
import com.springboot.entities.TblCat;
import com.springboot.entities.TblFacilitator;
//import com.springboot.entities.TblFacilitator;
import com.springboot.entities.TblFormresult;
import com.springboot.entities.TblParticipant;
import com.springboot.entities.TblSubcat;
import com.springboot.entities.TblSupervisor;
import com.springboot.entities.TblTraining;
import com.springboot.entities.TblUser;
import com.springboot.repository.custom.MainRepository;

@Service
public class MainService {
	
	@Autowired
	private MainRepository MainRepository;
	
	@PersistenceContext
	private EntityManager em;

	public void addUser(String fname, String lname, String email,
			String password, String svId) {
		if(svId!="")
		{//if naay gi select nga supervisor
			TblUser user = new TblUser();
			user.setUserFname(fname);
			user.setUserLname(lname);
			user.setUserEmail(email);
			user.setUserPassword(password);
			user.setUserType("Regular Employee");
			int userId = MainRepository.addUser(em,user);
			TblSupervisor sv = new TblSupervisor();
			sv.setSupervisorId(Integer.parseInt(svId));
			sv.setUserId(userId);
			MainRepository.addSupervisor(em,sv);
		}else {
			TblUser user = new TblUser();
			user.setUserFname(fname);
			user.setUserLname(lname);
			user.setUserEmail(email);
			user.setUserPassword(password);
			user.setUserType("Supervisor");
			int userId = MainRepository.addUser(em,user);
		}
		
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
	public void removeParticipantById(String[] id, int trainid) {
		 MainRepository.removeParticipantById(em, id,trainid);
			
	}

	public Object checkUser(String email, String password) {	
		
		return MainRepository.checkuser(em,email,password);
		
	}

	public void addSAF(List<TblSubcat> subCatList, String[] results, int ansId, int userId, String restype) {	
//		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		System.out.println(restype);
		if(restype.equalsIgnoreCase("peer")){
			System.out.println(restype);
			MainRepository.updateTblAnswerSaf(em,userId,ansId);
		}
		for(TblSubcat sub: subCatList){
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


	public List<Object> getConcludedTraining() {
		return MainRepository.getConcludedTraining(em);
	}

	public void updateTeaf(String[] id, String[] quest) {
		Integer[] ids=new Integer[id.length];
	    int i=0;
	    for(String str:id){
	    	ids[i]=Integer.parseInt(str.trim());
	        i++;
	    }
	    int j=0;
	    for(int questid:ids){
	    	MainRepository.updateTeaf(em,questid,quest[j]);
	        j++;
	    }
	    
		
	}

	public void updateTraining(String train_name, String train_cat,
			Date train_datestart, Date train_dateend, String train_timestart,
			String train_timeend, String train_courseoutline, int trainId) {
			TblTraining train = new TblTraining();
			train.setTrainId(trainId);
			train.setTrainCat(train_cat);
			train.setTrainCourseoutline(train_courseoutline);
			train.setTrainDateend(train_dateend);
			train.setTrainDatestart(train_datestart);
			train.setTrainName(train_name);
			train.setTrainTimeend(train_timeend);
			train.setTrainTimestart(train_timestart);
			train.setTrainStatus(1);
			MainRepository.updateTraining(em,train);
	}

	public List<TblUser> getSupeprvisor() {
		return MainRepository.getSupervisor(em);
	}
	public List<Object> getJoinedTraining(int userId) {	
		return MainRepository.getJoinedTraining(em,userId);
	}
	public void submitUserCff(String[] cffAnswer) {
		TblFormresult ansCff[] = new TblFormresult[3];	
		Date date = new Date();
		int questid = 31;

		for(int i = 0; i <ansCff.length ; i++)
		{
			ansCff[i] = new TblFormresult();
			ansCff[i].setAnsId(i+1);
			ansCff[i].setUserId(1); //SUBJECT TO CHANGE
			ansCff[i].setQuestId(questid);
			ansCff[i].setResDate(date);
			ansCff[i].setTrainId(101); //SUBJECT TO CHANGE
			ansCff[i].setResData(cffAnswer[i]);
			ansCff[i].setResType("Self");
			questid++;
			
		}
		MainRepository.submitUserCff(em,ansCff);
		
		
	}

	public List<Object> getParticipantComments(String trainId) {
		return MainRepository.getParticipantComments(em, trainId);
	}

	public void submitFff(String[] userFffAnswer) {
		TblFormresult ansFff[] = new TblFormresult[11];	
		Date date = new Date();
		
		int questid = 34;
		
		for(int i = 0; i <ansFff.length ; i++)
		{
			ansFff[i] = new TblFormresult();
			ansFff[i].setAnsId(i+1);
			ansFff[i].setUserId(1); //SUBJECT TO CHANGE
			ansFff[i].setQuestId(questid);
			ansFff[i].setResDate(date);
			ansFff[i].setTrainId(101); //SUBJECT TO CHANGE
			ansFff[i].setResData(userFffAnswer[i]);
			ansFff[i].setResType("Self");
			questid++;
		}
		MainRepository.submitUserFff(em,ansFff);
	}

	public List<Object> getCommentsforFaci(String trainId) {
		
		return MainRepository.getCommentsforFaci(em, trainId);
	}

	public double getFacilitatorRating(String trainId) {
		
		double value = MainRepository.getFacilatatorRating(em, trainId);
		
		value = ((5-value)/5)*100;
		System.out.println(value + "VALUEEEE GAGUUUU");
		return value;
//		return MainRepository.getFacilatatorRating(em, trainId);
	}

	public List<Object> getSupervisedUsers(int id) {	
		return MainRepository.getSupervisedUsers(em,id);
	}

	public void addPeers(int peer1, int peer2, int peer3,	
			int forId) {

			TblAnswersaf peerinsert1 = new TblAnswersaf();
			peerinsert1.setByuserId(peer1);
			peerinsert1.setForuserId(forId);
			peerinsert1.setStatus("pending");
			MainRepository.addPeers(em,peerinsert1);

			TblAnswersaf peerinsert2 = new TblAnswersaf();
			peerinsert2.setByuserId(peer2);
			peerinsert2.setForuserId(forId);
			peerinsert2.setStatus("pending");
			MainRepository.addPeers(em,peerinsert2);

			TblAnswersaf peerinsert3 = new TblAnswersaf();
			peerinsert3.setByuserId(peer3);
			peerinsert3.setForuserId(forId);
			peerinsert3.setStatus("pending");
			MainRepository.addPeers(em,peerinsert3);

		
	}

	public void removeFacilitatorById(String[] id, int trainid) {
			MainRepository.removeFacilitatorById(em, id,trainid);
	}

	public List<Object> answerSafUsers(int id) {
		return MainRepository.answerSafUsers(em,id);
	}
}
	
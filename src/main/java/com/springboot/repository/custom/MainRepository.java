package com.springboot.repository.custom;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;













import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.apache.commons.logging.Log;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springboot.entities.TblAnswersaf;
import com.springboot.entities.TblAttendance;
import com.springboot.entities.TblCat;
import com.springboot.entities.TblFacilitator;
import com.springboot.entities.TblFormresult;
import com.springboot.entities.TblSubcat;
import com.springboot.entities.TblSupervisor;
import com.springboot.entities.TblTraining;
import com.springboot.entities.TblParticipant;
import com.springboot.entities.TblUser;
import com.springboot.service.MainService;

@Repository
@Transactional
public class MainRepository {
	
	@Autowired
	private MainService MainService;

	public int addUser(EntityManager em, TblUser user) {	
		boolean result = false;
		em.persist(user);
		return user.getUserId();
	}
	
	public int addTraining(EntityManager em, TblTraining training) {
		
		em.persist(training);
		return training.getTrainId();
	}



	public List<TblCat> getCategoriesByFormId(EntityManager em, int id) {
		StringBuilder CatQuery = new StringBuilder("FROM TblCat WHERE form_id = :id");
		Query query = em.createQuery(CatQuery.toString());
		query.setParameter("id", id);
		List<TblCat> CatList = query.getResultList();
		return CatList;
	}

	public List<TblSubcat> getSubCategoriesByFormId(EntityManager em, int id) {	
		StringBuilder CatQuery = new StringBuilder("FROM TblSubcat WHERE form_id = :id");
		Query query = em.createQuery(CatQuery.toString());
		query.setParameter("id", id);
		List<TblSubcat> SubCatList = query.getResultList();
		return SubCatList;
	}
	public List<TblUser> getRecommendedParticipants(EntityManager em) {
		
		StringBuilder studentQuery = new StringBuilder("FROM TblUser");	
		Query query = em.createQuery(studentQuery.toString());
		List<TblUser> recommendedList = query.getResultList();
		return recommendedList;
		

	}
	
	public List<TblUser> getConfirmedParticipants(EntityManager em,int id) {
		
		
		Session session = em.unwrap(Session.class);
		StringBuilder stringQuery = new StringBuilder(
				"SELECT u.* "
				+ "FROM tbl_participant p JOIN tbl_user u "
				+ "ON p.user_id = u.user_id "
				+ "WHERE p.train_id = :id");
		SQLQuery query = session.createSQLQuery(stringQuery.toString());
		query.setParameter("id", id);
		List<TblUser> list = query.list();
		return list;
		

	}
	
	public boolean addParticipant(EntityManager em, String[] id) {
		boolean result = false;
		
		ArrayList<Integer> participants = new ArrayList<Integer>();
		for(String ids : id){
			Integer n = new Integer(Integer.parseInt(ids));
			System.out.println(n);
			participants.add(n);
		}
		
		for(int i=0; i<id.length; i++){
			StringBuilder addquery = new StringBuilder("FROM TblUser WHERE user_id = :id");
			Query query = em.createQuery(addquery.toString());
			query.setParameter("id", participants.get(i));
			List<TblUser> addParticipant = query.getResultList();
			MainService.addParticipantPhase2(addParticipant);
		}
		
		
		return result;
	}


	public void removeParticipantById(EntityManager em, String[] id, int trainid) {
		ArrayList<Integer> participants = new ArrayList<Integer>();

		for(String ids : id){
			Integer n = new Integer(Integer.parseInt(ids));
			System.out.println(n);
			participants.add(n);
		}
		StringBuilder studentQuery = new StringBuilder("DELETE FROM TblParticipant WHERE userId IN :userid AND trainId = :trainid");
		Query query = em.createQuery(studentQuery.toString());
		query.setParameter("userid",participants);
		query.setParameter("trainid",trainid);
		query.executeUpdate();
	}

	public Object checkuser(EntityManager em, String email, String password) {
		Object user = null;
		StringBuilder userQuery = new StringBuilder("FROM TblUser WHERE userEmail = :email and userPassword = :password");
		Query query = em.createQuery(userQuery.toString());
		query.setParameter("email", email);
		query.setParameter("password", password);
		
		try{
			user = query.getSingleResult();
		}
		catch (NoResultException e){}
		return user;

	}

	public void addSAF(EntityManager em, TblFormresult form) {
		// TODO Auto-generated method stub
		em.persist(form);
	}

	public List<TblUser> getUsers(EntityManager em) {	
		StringBuilder userquery = new StringBuilder("FROM TblUser WHERE userType != :type");
		Query query = em.createQuery(userquery.toString());
		query.setParameter("type", "administrator");
		List<TblUser> users = query.getResultList();
		return users;
	}

	public void addParticipant(EntityManager em, TblParticipant participant) {
		em.persist(participant);
		
	}
	public void addFacilitator(EntityManager em, TblFacilitator facilitator) {
		em.persist(facilitator);
		
	}
	public void addParticipantPhase2(EntityManager em, TblParticipant participant) {
		// TODO Auto-generated method stub

		em.persist(participant);
		
	}
	public List<Object> getUpcomingTraining(EntityManager em) {	
		Session session = em.unwrap(Session.class);
		StringBuilder stringQuery = new StringBuilder(
				"SELECT t.train_name, COUNT(p.user_id) as partNo, t.train_id "
				+"FROM tbl_training t JOIN tbl_participant p "
				+"ON t.train_id = p.train_id "
				+"WHERE train_status = 1 "
				+"GROUP BY t.train_id");
		SQLQuery query = session.createSQLQuery(stringQuery.toString());
		List<Object> list = query.list();
		return list;
	}

	public Object getTrainingById(EntityManager em, int trainId) {
		StringBuilder trainquery = new StringBuilder("FROM TblTraining WHERE trainId = :id");
		Query query = em.createQuery(trainquery.toString());
		query.setParameter("id", trainId);
		Object trainDetail = query.getSingleResult();
		return trainDetail;
	}

	public List<Object> getFacilitatorsById(EntityManager em, int trainId) {
		Session session = em.unwrap(Session.class);
		StringBuilder stringQuery = new StringBuilder(
				"SELECT u.* "
				+"FROM tbl_facilitator f JOIN tbl_user u "
				+"ON f.user_id = u.user_id "
				+"WHERE f.train_id = :id ");
		SQLQuery query = session.createSQLQuery(stringQuery.toString());
		query.setParameter("id", trainId);
//		query.setResultTransformer(Transformers.aliasToBean(User.class));
		List<Object> list = query.list();
		return list;
	}
	public void submitTeafQuestions(EntityManager em, TblCat[] quesTeaf) {
		
		for(int i=0; i<quesTeaf.length; i++){
			em.persist(quesTeaf[i]);
		}
		
	}
	
	public void submitTeafAnswers(EntityManager em, TblFormresult[] ansTeaf) {

		for(int i=0; i<ansTeaf.length; i++){
			em.persist(ansTeaf[i]);
		}
		
	}

	public List<TblCat> getTeafQuestions(EntityManager em) {
		StringBuilder studentQuery = new StringBuilder("FROM TblCat WHERE form_id = 2");	
		Query query = em.createQuery(studentQuery.toString());
		List<TblCat> questionsList = query.getResultList();
		return questionsList;
	}


	public List<Object> getConcludedTraining(EntityManager em) {
		Session session = em.unwrap(Session.class);
		StringBuilder stringQuery = new StringBuilder(
			"SELECT t.train_name, COUNT(p.user_id) as partNo, t.train_id, "
																		+"(SELECT cast((SUM(cast(res_data as int))/30*100)/(100*count(DISTINCT(user_id)))*100 as int) as total " 
																		+"  FROM `tbl_formresults` "
																		+" WHERE quest_id BETWEEN 1 AND 6 AND train_id = t.train_id) as percent "
			+"FROM tbl_training t JOIN tbl_participant p "
			+"ON t.train_id = p.train_id " 
			+"WHERE train_status = 3 "
			+"GROUP BY t.train_id "
		);
		SQLQuery query = session.createSQLQuery(stringQuery.toString());
		List<Object> list = query.list();
		return list;
	}

	
	
//	public void submitTeafAnswer(EntityManager em, TblFormresult form) {
//		// TODO Auto-generated method stub
//		em.persist(form);
//	}
	

	public List<Object> getParticipantsById(EntityManager em, int trainId) {
		Session session = em.unwrap(Session.class);
		StringBuilder stringQuery = new StringBuilder(
				"SELECT u.* "
				+ "FROM tbl_participant p JOIN tbl_user u "
				+ "ON p.user_id = u.user_id "
				+ "WHERE p.train_id = :id ");
		SQLQuery query = session.createSQLQuery(stringQuery.toString());
		query.setParameter("id", trainId);
		List<Object> list = query.list();
		return list;
	}

	public void submitAttendance(EntityManager em, TblAttendance attend) {
			em.persist(attend);
			System.out.println("Bogooooooo");
			
	}

	public String[] getAllParticipantsId(EntityManager em, int trainId) {

		Session session = em.unwrap(Session.class);
		StringBuilder stringQuery = new StringBuilder(
				"SELECT u.user_id "
				+ "FROM tbl_participant p JOIN tbl_user u "
				+ "ON p.user_id = u.user_id "
				+ "WHERE p.train_id = :id ");
		SQLQuery query = session.createSQLQuery(stringQuery.toString());
		query.setParameter("id", trainId);
		List<String> list = query.list();
		String[] array = new String[list.size()];
		for(int i = 0; i < list.size(); i++){
			array[i] = String.valueOf(list.get(i));
		}
		System.out.println("Bogooooooo ang getAllParticipantsId");
		
		return array ;
	}


	public void updateTeaf(EntityManager em, int ids, String quest) {
		StringBuilder teafquery = new StringBuilder("UPDATE TblCat set catDesc = :quest WHERE catId = :id");
		Query query = em.createQuery(teafquery.toString());
		query.setParameter("quest", quest);
		query.setParameter("id", ids);
		query.executeUpdate();	
		
	}

	public void updateTraining(EntityManager em, TblTraining train) {
		em.merge(train);
		
	}

	public List<TblUser> getSupervisor(EntityManager em) {
		StringBuilder svquery = new StringBuilder("FROM TblUser WHERE userType = 'Supervisor/Manager'");
		Query query = em.createQuery(svquery.toString());
		List<TblUser> list = query.getResultList();
		return list;
	}

	public void addSupervisor(EntityManager em, TblSupervisor sv) {
		em.persist(sv);
		
	}

	public List<Object> getJoinedTraining(EntityManager em, int userId) {
		Session session = em.unwrap(Session.class);
		StringBuilder stringQuery = new StringBuilder(
				"SELECT t.*,( "
							+"SELECT DATEDIFF( CURRENT_DATE,train_datestart ) FROM tbl_training "
							+"WHERE train_id = t.train_id AND train_datestart <= CURRENT_DATE "
							+")as days, " 
							+"(SELECT DATEDIFF(train_dateend, train_datestart ) FROM tbl_training WHERE train_id = t.train_id "
					        +")as NoOfdays FROM tbl_training t "
				+"JOIN tbl_participant p ON t.train_id = p.train_id "
				+"JOIN tbl_user u on p.user_id = u.user_id "
				+"WHERE u.user_id = :id AND t.train_status IN(1,2) "
				);
		SQLQuery query = session.createSQLQuery(stringQuery.toString());
		query.setParameter("id", userId);
		List<Object> list = query.list();
		return list;
	}
	public void submitUserCff(EntityManager em, TblFormresult[] ansCff) {
		for(int i=0; i<ansCff.length; i++){
			em.persist(ansCff[i]);
		}
		
	}

	public List<Object> getParticipantComments(EntityManager em, String trainId) {
		
		Session session = em.unwrap(Session.class);
		StringBuilder stringQuery = new StringBuilder(
				"SELECT u.user_fname, u.user_lname, f.res_data "
				+ "FROM tbl_formresults f "
				+ "JOIN tbl_user u " 
				+ "ON f.user_id = u.user_id " 
				+ "WHERE f.train_id = :id AND f.quest_id BETWEEN 31 AND 33 ");
		SQLQuery query = session.createSQLQuery(stringQuery.toString());
		query.setParameter("id", trainId);
		List<Object> list = query.list();		
		return list;
	}

	public void submitUserFff(EntityManager em, TblFormresult[] ansFff) {
		for(int i=0; i<ansFff.length; i++){
			em.persist(ansFff[i]);
		}
		
		
	}

	public List<Object> getCommentsforFaci(EntityManager em, String trainId) {
		Session session = em.unwrap(Session.class);
		StringBuilder stringQuery = new StringBuilder(
				"SELECT u.user_fname, u.user_lname, f.res_data "
				+ "FROM tbl_formresults f "
				+ "JOIN tbl_user u " 
				+ "ON f.user_id = u.user_id " 
				+ "WHERE f.train_id = :id AND f.quest_id = 44 ");
		SQLQuery query = session.createSQLQuery(stringQuery.toString());
		query.setParameter("id", trainId);
		List<Object> list = query.list();		
		return list;
	}

	public double getFacilatatorRating(EntityManager em, String trainId) {
		Session session = em.unwrap(Session.class);
		StringBuilder stringQuery = new StringBuilder(
				"SELECT AVG(f.res_data) "
				+ "FROM tbl_formresults f " 
				+ "JOIN tbl_user u " 
				+ "ON f.user_id = u.user_id " 
				+ "WHERE f.train_id =:id AND f.quest_id BETWEEN 34 AND 43 ");
		SQLQuery query = session.createSQLQuery(stringQuery.toString());
		query.setParameter("id", trainId);
		List<Double> list = query.list();
		System.out.println(list.get(0).toString() + "BOGOG RATING");
		double value =  Double.parseDouble(list.get(0).toString());
		return value;
	}

	public List<Object> getSupervisedUsers(EntityManager em, int id) {	
		Session session = em.unwrap(Session.class);
		StringBuilder stringQuery = new StringBuilder("SELECT u.* FROM tbl_supervisor s "
													 +"JOIN tbl_user u on s.user_id = u.user_id "
													 +"WHERE s.supervisor_id = :id AND s.peerstatus = 'no'");
		SQLQuery query = session.createSQLQuery(stringQuery.toString());
		query.setParameter("id", id);
		List<Object> list =  query.list();
		return list;
	}

	public void addPeers(EntityManager em, TblAnswersaf peer) {
		em.persist(peer);
		
	}

	public void removeFacilitatorById(EntityManager em, String[] id, int trainid) {	
		ArrayList<Integer> facilitators = new ArrayList<Integer>();
		for(String ids : id){
			Integer n = new Integer(Integer.parseInt(ids));
			System.out.println(n);
			facilitators.add(n);
		}
		StringBuilder studentQuery = new StringBuilder("DELETE FROM TblFacilitator WHERE userId IN :userid AND trainId = :trainid");
		Query query = em.createQuery(studentQuery.toString());
		query.setParameter("userid",facilitators);
		query.setParameter("trainid",trainid);
		query.executeUpdate();
		
	}

	public List<Object> answerSafUsers(EntityManager em, int id) {
		Session session = em.unwrap(Session.class);
		StringBuilder stringQuery = new StringBuilder(
														"SELECT u.* FROM tbl_answersaf a "
														+"JOIN tbl_user u on a.foruser_id = u.user_id "
														+"WHERE a.status <> 'done' AND a.byuser_id = :id"
													 );
		SQLQuery query = session.createSQLQuery(stringQuery.toString());
		query.setParameter("id", id);
		List<Object> list =  query.list();
		return list;
	}

	public void updateTblAnswerSaf(EntityManager em, int userId, int ansId) {	
		Session session = em.unwrap(Session.class);
		StringBuilder stringQuery = new StringBuilder(
														"UPDATE `tbl_answersaf` SET `status`= 'done' "
														+"WHERE `foruser_id` = :userId AND `byuser_id` = :ansId"
													 );
		SQLQuery query = session.createSQLQuery(stringQuery.toString());
		query.setParameter("userId", userId);
		query.setParameter("ansId", ansId);
		query.executeUpdate();
		
	}

	public List<TblUser> getUsersExceptCurrent(EntityManager em, int id) {	
		StringBuilder userquery = new StringBuilder("FROM TblUser WHERE userType != :type AND userId != :id");
		Query query = em.createQuery(userquery.toString());
		query.setParameter("type", "administrator");
		query.setParameter("id", id);
		List<TblUser> users = query.getResultList();
		return users;
	}

	public void updatePeerStatus(EntityManager em, int forId) {
		Session session = em.unwrap(Session.class);
		StringBuilder stringQuery = new StringBuilder("UPDATE `tbl_supervisor` SET `peerstatus`= 'yes' WHERE `user_id` = :id");
		SQLQuery query = session.createSQLQuery(stringQuery.toString());
		query.setParameter("id", forId);
		query.executeUpdate();
		
	}

	public boolean getSafDataById(EntityManager em, int id) {
		StringBuilder userquery = new StringBuilder("FROM TblFormresult WHERE res_type = 'self' AND train_id = 0 AND ans_id = :id");
		Query query = em.createQuery(userquery.toString());
		query.setParameter("id", id);
		List<TblUser> users = query.getResultList();
		
		if(users != null)
			return true;
		else
			return false;
	}
	public List<Object> getAttendanceDetails(EntityManager em, int trainid) {
		Session session = em.unwrap(Session.class);
		StringBuilder stringQuery = new StringBuilder(
				"SELECT u.user_fname, u.user_lname, a.status, a.att_date "
				+ "FROM tbl_attendance a "
				+ "JOIN tbl_user u " 
				+ "ON a.user_id = u.user_id " 
				+ "WHERE a.train_id = :id ");
		SQLQuery query = session.createSQLQuery(stringQuery.toString());
		query.setParameter("id", trainid);
		List<Object> list = query.list();		
		return list;
	}

	public List<Object[]> getTrainingDaysDiff(EntityManager em) {
		Session session = em.unwrap(Session.class);
		StringBuilder stringQuery = new StringBuilder(
				"SELECT t.*, "
				+"( SELECT DATEDIFF( train_datestart,CURRENT_DATE ) FROM tbl_training WHERE train_id = t.train_id)as currentToStartDiffDays, "
				+"(SELECT DATEDIFF(train_dateend, train_datestart ) FROM tbl_training WHERE train_id = t.train_id)as NoOfdays "
				+"FROM tbl_training t "
				);
		SQLQuery query = session.createSQLQuery(stringQuery.toString());
		List<Object[]> list = query.list();
		return list;
	}

	public void updateTrainingStatus(EntityManager em, int id,int status) {
		Session session = em.unwrap(Session.class);
		StringBuilder stringQuery = new StringBuilder("UPDATE tbl_training SET train_status= :status WHERE train_id = :id");
		SQLQuery query = session.createSQLQuery(stringQuery.toString());
		query.setParameter("id", id);
		query.setParameter("status", status);
		query.executeUpdate();
		
	}

	public List<TblTraining> getTrainingByStatus(EntityManager em, int i) {
		StringBuilder CatQuery = new StringBuilder("FROM TblTraining WHERE trainStatus = :status");
		Query query = em.createQuery(CatQuery.toString());
		query.setParameter("status", i);
		List<TblTraining> list = query.getResultList();
		return list;
	}

	public void deleteTrainingById(EntityManager em, int id) {
		StringBuilder tQuery = new StringBuilder("DELETE FROM TblTraining WHERE trainId = :id");
		Query query = em.createQuery(tQuery.toString());
		query.setParameter("id",id);
		query.executeUpdate();
		
	}

	public List<Object> getOngoingTraining(EntityManager em) {
		Session session = em.unwrap(Session.class);
		StringBuilder stringQuery = new StringBuilder(
				"SELECT t.*,(SELECT DATEDIFF( CURRENT_DATE,train_datestart ) FROM tbl_training "
						+"WHERE train_id = t.train_id AND train_datestart <= CURRENT_DATE)as days, "
						+"(SELECT DATEDIFF(train_dateend, train_datestart ) FROM tbl_training WHERE train_id = t.train_id)as NoOfdays "
			            +"FROM tbl_training t "
							+"WHERE t.train_status = 2"
				);
		SQLQuery query = session.createSQLQuery(stringQuery.toString());
		List<Object> list = query.list();
		return list;
	}
	
}

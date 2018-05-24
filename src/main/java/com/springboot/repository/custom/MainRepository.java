package com.springboot.repository.custom;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.Query;
import javax.transaction.Transactional;
import org.springframework.stereotype.Repository;

import com.springboot.entities.TblCat;
import com.springboot.entities.TblFacilitator;
import com.springboot.entities.TblFormresult;
import com.springboot.entities.TblSubcat;
import com.springboot.entities.TblTraining;
import com.springboot.entities.TblParticipant;
import com.springboot.entities.TblUser;

@Repository
@Transactional
public class MainRepository {

	public boolean addUser(EntityManager em, TblUser user) {	
		boolean result = false;
		em.persist(user);
		return result;
	}
	
	public int addTraining(EntityManager em, TblTraining training) {
		
		em.persist(training);
		return training.getTrainId();
	}

	public boolean addParticipant(EntityManager em, TblParticipant participant) {
		boolean result = false;
		em.persist(participant);
		return result;
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
	
	public List<TblUser> getConfirmedParticipants(EntityManager em) {
		
		StringBuilder studentQuery = new StringBuilder("FROM TblParticipant");	
		Query query = em.createQuery(studentQuery.toString());
		List<TblUser> confirmedList = query.getResultList();
		return confirmedList;
		

	}


	public List<TblUser> removeParticipantById(EntityManager em, String[] id) {
		ArrayList<Integer> participants = new ArrayList<Integer>();

		for(String ids : id){
			Integer n = new Integer(Integer.parseInt(ids));
			System.out.println(n);
			participants.add(n);
		}
		StringBuilder studentQuery = new StringBuilder("DELETE FROM TblParticipant WHERE userId IN :id");
		Query query = em.createQuery(studentQuery.toString());
		query.setParameter("id",participants);
		query.executeUpdate();
		return null;
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
		StringBuilder uquery = new StringBuilder("FROM TblUser WHERE userType != :type");
		Query query = em.createQuery(uquery.toString());
		query.setParameter("type", "administrator");
		List<TblUser> users = query.getResultList();
		return users;
	}

	public void addParticipant2(EntityManager em, TblParticipant participant) {
		em.persist(participant);
		
	}

	public void addFacilitator(EntityManager em, TblFacilitator facilitator) {
		em.persist(facilitator);
		
	}
	
}

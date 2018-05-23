package com.springboot.repository.custom;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.apache.commons.logging.Log;
import org.springframework.stereotype.Repository;

import com.springboot.entities.TblCat;
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
	
	public Object addTraining(EntityManager em, TblTraining training) {
		boolean result = false;
		em.persist(training);
		return result;
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
	public List<TblUser> getParticipants(EntityManager em) {
		
//		StringBuilder studentQuery = new StringBuilder("FROM TblUser u, TblParticipant p WHERE u.userId=p.userId");	
//		Query query = em.createQuery(studentQuery.toString());
//		List<TblUser> participantList = query.getResultList();
//		return participantList;
//		
//		
//		StringBuilder studentQuery = new StringBuilder("FROM TblUser u INNER JOIN FETCH TblParticipant p WHERE u.userId = p.userId");	
//		Query query = em.createQuery(studentQuery.toString());
//		List<TblUser> participantList = query.getResultList();
//		return participantList;

		StringBuilder studentQuery = new StringBuilder("FROM TblUser");	
		Query query = em.createQuery(studentQuery.toString());
		List<TblUser> participantList = query.getResultList();
		return participantList;
		
		
		//session.createQuery("from Role as role INNER JOIN Involvement as involvement WHERE involvement.id = X").list();
		//em.createQuery(studentQuery.toString());
	}


	public List<TblUser> removeParticipantById(EntityManager em, int id) {
		StringBuilder studentQuery = new StringBuilder("DELETE FROM TblUser WHERE user_id =:id");
		Query query = em.createQuery(studentQuery.toString());
		
		query.setParameter("id",id);
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
	
}

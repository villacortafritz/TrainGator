package com.springboot.repository.custom;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

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
		// TODO Auto-generated method stub
		boolean result = false;
		em.persist(training);
		return result;
	}

	public boolean addParticipant(EntityManager em, TblParticipant participant) {
		boolean result = false;
		em.persist(participant);
		return result;
	}

	public List<TblUser> getParticipants(EntityManager em) {
		
		StringBuilder studentQuery = new StringBuilder("from TblUser");
		Query query = em.createQuery(studentQuery.toString());
		List<TblUser> studentList = query.getResultList();
		return studentList;
		
		//session.createQuery("from Role as role INNER JOIN Involvement as involvement WHERE involvement.id = X").list();
		//em.createQuery(studentQuery.toString());
	}
	

}

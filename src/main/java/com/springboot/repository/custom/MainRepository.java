package com.springboot.repository.custom;

import javax.persistence.EntityManager;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

<<<<<<< HEAD
import com.springboot.entities.TblTraining;
=======
import com.springboot.entities.TblParticipant;
>>>>>>> bc049ba8a604c5e239e60ddacdbe28100012fa0e
import com.springboot.entities.TblUser;

@Repository
@Transactional
public class MainRepository {

	public boolean addUser(EntityManager em, TblUser user) {	
		boolean result = false;
		em.persist(user);
		return result;
	}

<<<<<<< HEAD
	public Object addTraining(EntityManager em, TblTraining training) {
		// TODO Auto-generated method stub
		boolean result = false;
		em.persist(training);
=======
	public boolean addParticipant(EntityManager em, TblParticipant participant) {
		boolean result = false;
		em.persist(participant);
>>>>>>> bc049ba8a604c5e239e60ddacdbe28100012fa0e
		return result;
	}
	

}

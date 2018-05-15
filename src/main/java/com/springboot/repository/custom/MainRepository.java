package com.springboot.repository.custom;

import javax.persistence.EntityManager;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.springboot.entities.TblTraining;
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
	

}

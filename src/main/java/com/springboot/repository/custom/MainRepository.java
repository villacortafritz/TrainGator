package com.springboot.repository.custom;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.springboot.entities.TblCat;
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

	public List<TblCat> getCategoriesByFormId(EntityManager em) {
		StringBuilder CatQuery = new StringBuilder("FROM TblCat WHERE form_id = :id");
		Query query = em.createQuery(CatQuery.toString());
		query.setParameter("id", 1);
		List<TblCat> CatList = query.getResultList();
		return CatList;
	}

	public List<TblSubcat> getSubCategoriesByFormId(EntityManager em) {	
		StringBuilder CatQuery = new StringBuilder("FROM TblSubcat WHERE form_id = :id");
		Query query = em.createQuery(CatQuery.toString());
		query.setParameter("id", 1);
		List<TblSubcat> SubCatList = query.getResultList();
		return SubCatList;
	}
	

}

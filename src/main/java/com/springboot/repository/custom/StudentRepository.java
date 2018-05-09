package com.springboot.repository.custom;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.springboot.entities.Student;

@Repository
@Transactional
public class StudentRepository {

	public boolean addStudent(EntityManager entityManager, Student student) {
		boolean result = false;

		entityManager.persist(student);// insert into table
		
		return result;
	}

	public List<Student> getStudents(EntityManager em) {
		StringBuilder studentQuery = new StringBuilder("FROM Student");
		Query query = em.createQuery(studentQuery.toString());
		List<Student> studentList = query.getResultList();
		return studentList;
	}
}

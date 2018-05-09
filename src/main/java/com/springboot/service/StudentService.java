package com.springboot.service;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springboot.entities.Student;
import com.springboot.repository.custom.StudentRepository;

@Service
public class StudentService {

	@PersistenceContext
	private EntityManager em;
	
	@Autowired
	private StudentRepository studentRepository;
	
	public boolean addUser(String name, String age) {
		boolean result = false;
		Student student = new Student();
		student.setName(name);
		student.setAge(Integer.parseInt(age));
		result = studentRepository.addStudent(em, student);
		
		return result;
	}

	public List<Student> getStudents() {
		return studentRepository.getStudents(em);
	}
}

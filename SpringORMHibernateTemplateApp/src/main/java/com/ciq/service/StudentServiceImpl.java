package com.ciq.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ciq.Student;
import com.ciq.dao.StudentDaoimpl;
@Service
public class StudentServiceImpl implements StudentService{
	
	@Autowired
	private StudentDaoimpl daoImpl;

	@Override
	public void save(Student student) {
		daoImpl.save(student);
		
		
	}

	@Override
	public List<Student> geStudents() {
		return daoImpl.geStudents();
	}

	@Override
	public void delete(int id) {
		daoImpl.delete(id);
		
	}

	@Override
	public void update(Student student) {
		daoImpl.update(student);		
	}

	@Override
	public Student findbyid(int id) {
		return daoImpl.findbyid(id);
	}

}

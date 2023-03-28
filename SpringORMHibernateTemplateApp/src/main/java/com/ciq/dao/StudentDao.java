package com.ciq.dao;

import java.util.List;

import com.ciq.Student;

public interface StudentDao {
	
	void save(Student student);
	List<Student> geStudents();
	void delete(int id);
	void update(Student student);
	Student findbyid(int id);
	
	

}
 
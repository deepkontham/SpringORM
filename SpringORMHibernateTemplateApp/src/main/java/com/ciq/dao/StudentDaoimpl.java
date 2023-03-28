package com.ciq.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.ciq.Student;

@Repository
@Transactional
public class StudentDaoimpl implements StudentDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Override
	public void save(Student student) {
		hibernateTemplate.save(student);

	}

	@Override
	public List<Student> geStudents() {
		return hibernateTemplate.loadAll(Student.class);
	}

	@Override
	public void delete(int id) {
		Student s=new Student();
		s.setId(id);
		hibernateTemplate.delete(s);

	}

	@Override
	public void update(Student student) {
		hibernateTemplate.update(student);

	}

	@Override
	public Student findbyid(int id) {
		return hibernateTemplate.get(Student.class, id);
	}

}

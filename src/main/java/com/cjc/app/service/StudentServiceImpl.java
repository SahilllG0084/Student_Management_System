package com.cjc.app.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.cjc.app.model.Student;
import com.cjc.app.repository.StudentRepository;

@Service
public class StudentServiceImpl implements StudentService {
   
	@Autowired
	private StudentRepository studentrepository;  // secondary reference of StudentRepository

	@Override
	public void saveStudent(Student student) {
		
		studentrepository.save(student);
		
		System.out.println("In Service Layer :" + student);
	}

	@Override
	public List<Student> getAllStudent() {
		
		List<Student> list = studentrepository.findAll();
		
		return list;
	}

	@Override
	public List<Student> deleteStudent(int rollno) {
		
		System.out.println("In Service Layer : "+rollno);
		
		studentrepository.deleteById(rollno);
		
		return studentrepository.findAll();
	}
	
	@Override
	public Student getStudent(int rollno) {
		
		Student student = studentrepository.findById(rollno).get();
		
		return student;
	}
}

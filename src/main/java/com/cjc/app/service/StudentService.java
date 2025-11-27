package com.cjc.app.service;

import java.util.List;
import com.cjc.app.model.Student;

public interface StudentService {
    
	public void saveStudent(Student student);
	
	List<Student>getAllStudent();
	
	public List<Student> deleteStudent(int rollno);
	
	public Student getStudent(int rollno);
	
}

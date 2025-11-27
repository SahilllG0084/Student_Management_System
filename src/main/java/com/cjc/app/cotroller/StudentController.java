package com.cjc.app.cotroller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.cjc.app.constants.Credentials;
import com.cjc.app.model.Student;
import com.cjc.app.service.StudentService;

@Controller
public class StudentController {
    
	@Autowired
	private StudentService studentservice;    //secondary reference of StudentService & @Autowired attribute is compulsory
	
	@RequestMapping(value = "/")
	public String landingPage()
	{	
		return "index";
	}
	
	@RequestMapping(value = "/reg")
	public String handlerRegRequest()
	{
		return "register";
	}
	
	@RequestMapping(value = "/register")
	public String handelRegisterRequest(@ModelAttribute Student student)	
	{   			
		studentservice.saveStudent(student);
		
		System.out.println("In Controller Layer :" + student);
		
		return "index";
	}
	
	@RequestMapping(value = "/log")
	public String handleLogRequest()
	{
		return "login";
	}
	
	@RequestMapping(value = "/login")
	public String handleLoginRequest(@RequestParam String username , @RequestParam String password, Model model)
	{
		System.out.println("Student UserName : "+username);
		System.out.println("Student Password : "+password);
		
		//logic to check username and password
		
		if(username.equals(Credentials.USERNAME) && password.equals(Credentials.PASSWORD) )  
		{   
			List<Student> stulist = studentservice.getAllStudent();
			
			model.addAttribute("data", stulist);   // connecting with jsp page
			
			return "success";
		}
		
		return "index";
	}
	
	@RequestMapping(value = "/delete")
	public String handleDeleteRequest(@RequestParam int rollno, Model model)
	{
		System.out.println("In Controller Layer :"+rollno);
		
		List<Student> stulist = studentservice.deleteStudent(rollno);
		
		model.addAttribute("data", stulist);
		
		return "success";		
	}
	
	@RequestMapping(value = "/edit")
	public String handleEditRequest(@RequestParam int rollno, Model model)
	{
		System.out.println("In Controller Layer : "+rollno);
		
		Student student = studentservice.getStudent(rollno);
		
		model.addAttribute("stu", student);
		
		return "update";
	}
	
	@RequestMapping(value = "/update")
	public String handleUpdateRequest(@ModelAttribute Student student, Model model)
	{
		studentservice.saveStudent(student);
		
		List<Student> allStudent = studentservice.getAllStudent();
		
        model.addAttribute( "data" , allStudent);
		
		return "success";
	}
}

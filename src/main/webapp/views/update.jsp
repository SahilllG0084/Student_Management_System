<%@ page import="com.cjc.app.model.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

 <link rel="stylesheet" href="styles.css">
 
</head>
<body style="background-color: yellow;">
    
    <h1 style="background-color: white; color: black; text-align: center;">Welcome To Update Page.....</h1> <br><br>
    
    <hr>
    
    <% Student student = (Student)request.getAttribute("stu"); %>
    
    <div align="center">
    
       <form action="update" method="post">
       
       <label>Rollno :</label>
       <input type="hidden" name="rollno" value="<%=student.getRollno()%>" required="required"> <br><br>
       
       <label>FIRSTNAME :</label>
       <input type="text" name="firstName" value="<%=student.getFirstName()%>" required="required"> <br> <br>
       
       <label>MIDDLENAME :</label>
       <input type="text" name="middleName" value="<%=student.getMiddleName()%>" required="required"> <br> <br>
       
       <label>LASTNAME :</label>
       <input type="text" name="lastName" value="<%=student.getLastName()%>" required="required"> <br> <br>
       
       <label>ADDRESS :</label>
       <input type="text" name="address" value="<%=student.getAddress()%>" required="required"> <br> <br>
       
       <label>EMAIL ID :</label>
       <input type="email" name="emailId" value="<%=student.getEmailId()%>" required="required"> <br> <br>
       
       <label>MOBILE NO :</label>
       <input type="tel" name="mobileNo" value="<%=student.getMobileNo()%>" required="required" pattern="[9-8-7] {9}"> <br> <br>
        
       <label>AGE :</label>
       <input type="number" name="age" value="<%=student.getAge()%>" required="required"> <br><br>
        
       <label>SELECT GENDER :</label>  
       <input type="text" name="gender" value="<%=student.getGender()%>"> 
       
       <input type="submit" value="Update">
        
       </form>
    
    </div>
    
</body>
</html>
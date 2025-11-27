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
    
    <h1 style="background-color: white; color: black; text-align: center;">WELCOME TO STUDENT REGISTRATION PAGE.....</h1> <br><br>
    
    <hr>
    
    <div align="center">
    
       <form action="register" method="post">
       
       <label>FIRSTNAME :</label>
       <input type="text" name="firstName" placeholder="Enter First Name Here" required="required"> <br> <br>
       
       <label>MIDDLENAME :</label>
       <input type="text" name="middleName" placeholder="Enter Middle Name Here" required="required"> <br> <br>
       
       <label>LASTNAME :</label>
       <input type="text" name="lastName" placeholder="Enter Last Name Here" required="required"> <br> <br>
       
       <label>ADDRESS :</label>
       <input type="text" name="address" placeholder="Enter Your Address Here" required="required"> <br> <br>
       
       <label>EMAIL ID :</label>
       <input type="email" name="emailId" placeholder="Enter Your Email Here" required="required"> <br> <br>
       
       <label>MOBILE NO :</label>
       <input type="tel" name="mobileNo" placeholder="Enter Mobile No Here" required="required" pattern="[9-8-7] {9}"> <br> <br>
        
       <label>AGE :</label>
       <input type="number" name="age" placeholder="Enter Your Age Here" required="required"> <br><br>
        
       <label>SELECT GENDER :</label>  
       <input type="radio" name="gender" value="MALE">MALE   
       <input type="radio" name="gender" value="FEMALE">FEMALE  <br> <br>
       
       <input type="submit" value="SUBMIT">
        
       </form>
    
    </div>
    
</body>
</html>
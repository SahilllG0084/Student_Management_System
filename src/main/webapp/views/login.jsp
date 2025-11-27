<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

 <link rel="stylesheet" href="styles.css">
 
</head>
<body style="background-color: blue;">
    
    <h1 style="background-color: red; text-align: center; color: yellow;">WELCOME TO STUDENT LOG IN PAGE....</h1> <br><br>
    
    <hr>
    
    <div align="center">
     
     <form action="login" method="post">
      
      <label>USERNAME :</label>
      <input type="text" name="username" placeholder="UserName" required="required"> <br> <br>
      
       <label>PASSWORD</label>
       <input type="password" name="password" placeholder="Password" 
           pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" 
           title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required> <br><br>
      
      <button type="submit">LOG IN</button>
       
     </form>
       
    </div>
    
</body>
</html>
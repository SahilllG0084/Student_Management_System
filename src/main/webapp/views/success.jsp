<%@page import="com.cjc.app.model.Student"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<script type="text/javascript">

  function deleteData()
  {  
	  alert('Deleting Data....!');
	  document.myform.action="delete";
	  document.myform.submit();
  }
  
  function editData()
  {
	  alert('Editing Data....!');
	  document.myform.action="edit";
	  document.myform.submit();
  }

</script>

</head>
<body style="background-color: silver">
   <h1 style="background-color: black;text-align: center;color: white;">Welcome To The Success Page...!</h1><br><br>
   <hr>
   
    <%   
    List<Student> stuList = (List<Student>) request.getAttribute("data");    
    %>
   
   <div align="center">
    
    <form name="myform">
  
   <table border="2px">
     <thead>
      <tr>
      <th>Select</th>
      <th>RollNo</th>
      <th>First_Name</th>
      <th>Middle_Name</th>
      <th>Last_Name</th>
      <th>Address</th>
      <th>Email-Id</th>
      <th>Mobile No</th>
      <th>Age</th>
      <th>Gender</th>    
      </tr>
      </thead> 
         
          <tbody>
            <%  for( Student stu : stuList ) {%>
              <tr>
                    <td><input type="radio" name="rollno" value="<%=stu.getRollno()%>"></td>
                    <td><%= stu.getRollno()%></td>
                    <td><%= stu.getFirstName()%></td>
                    <td><%= stu.getMiddleName()%></td>
                    <td><%= stu.getLastName()%></td>
                    <td><%= stu.getAddress()%></td>
                    <td><%= stu.getEmailId()%></td>
                    <td><%= stu.getMobileNo()%></td>
                    <td><%= stu.getAge()%></td>
                    <td><%= stu.getGender()%></td>
              </tr>         
            <%} %> 
             
        </tbody>  
  </table>
  
         <button onclick="editData()">Edit</button>
         <button onclick="deleteData()">Delete</button>
    
  </form> 
  
   </div> 
     
</body>
</html>
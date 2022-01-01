<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ page import="com.sdp3.placement.entity.User" %>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
  background-color:orange;
}
.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #04AA6D;
  color: white;
}
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
th{
color:white;
}
td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
</head>
<body>
	<%@ include file = "adminheader.jsp" %>
<center>
<h2>All Students List</h2>
</center>
<table>
  <tr style="background-color: black;">
  	<th>Id</th>
  	<th>Student Id</th>
    <th>User name</th>
    <th>Name</th>
    <th>Email</th>
    <th>Password</th>
    <th>Phone no</th>
    <th>Delete</th>
  </tr>
  <c:forEach var="cmp" items="${users }">
	<tr>
		
    	<td>${cmp.getUserid()}</td>
    	<td>${cmp.getIdno()}</td>
    	<td>${cmp.getUsername()}</td>
    	<td>${cmp.getName() }</td>
    	<td>${cmp.getEmail()}</td>
    	<td>${cmp.getPassword()}</td>
    	<td>${cmp.getPhone()}</td>
    	<!--<td><a type="button" class="btn btn-success" href="/sdelete?id=${cmp.getUserid()}">Update</a></td>-->
    	<td><button style="background-color:red;"><a type="button" style="text-decoration:none; color:white;" class="btn btn-warning" href="/sdelete?id=${cmp.getUserid()}">Delete</a></button></td>
    	
  	</tr>
  </c:forEach>
  
  
 
</table>

</body>
</html>


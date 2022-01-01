<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ page import="com.sdp3.placement.entity.Company" %>
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
<center><h2>All Companies</h2></center>

<table>
  <tr style="background-color: black;">
  	<th>Id</th>
    <th>Name</th>
    <th>Website</th>
    <th>Industry</th>
    <th>Job Vacancy</th>
    <th>Delete</th>
  </tr>
  <c:forEach var="cmp" items="${companies }">
	<tr>
    	<td>${cmp.getId()}</td>
    	<td>${cmp.getCompany_name()}</td>
    	<td>${cmp.getCompany_website() }</td>
    	<td>${cmp.getIndustry()}</td>
    	<td>${cmp.getCompany_size()}</td>
    	<!--<td><a type="button" class="btn btn-success" href="/edit?id=${cmp.getId()}">Update</a></td>-->
    	<td><button style="background-color:red;"><a type="button" style="text-decoration:none; color:white;"  class="btn btn-warning" href="/delete?id=${cmp.getId()}">Delete</a></button></td>
    	
  	</tr>
  </c:forEach>
  
  
 
</table>

</body>
</html>


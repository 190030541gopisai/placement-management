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
<%@ include file="header.jsp" %>
<center><h2>All Jobs Applied</h2></center>

<table>
  <tr style="background-color: black;">
  	<th>Applied ID</th>
    
    <th>Job Id</th>
    <th>Company Name</th>
    <th>Industry</th>
    <th>WithDraw Application</th>
    
  </tr>
  <c:forEach var="aj" items="${ appliedjobs }">
	<tr>
    	<td>${aj.getApplied_id()}</td>
    	<td>${ aj.getCompany_id()}</td>
    	<td>${ aj.getCompany_name()}</td>
    	<td>${ aj.getIndustry()}</td>
    	<td><button style="background-color:red;"><a type="button" style="text-decoration:none; color:white;"  class="btn btn-warning" href="/appliedjobdelete?id=${aj.getApplied_id()}">WithDraw</a></button></td>
    		
    	
  	</tr>
  </c:forEach>
  
  
 
</table>

</body>
</html>


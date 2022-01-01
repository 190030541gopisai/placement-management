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
	<%@ include file="header.jsp" %>

<center><h2>All Companies</h2></center>

<table>
  <tr style="background-color: black;">
  	<th>Id</th>
    <th>Name</th>
    <th>Website</th>
    <th>Industry</th>
    <th>Apply now</th>
  </tr>
  <c:forEach var="cmp" items="${companies }">
	<tr>
    	<td>${cmp.getId()}</td>
    	<td>${cmp.getCompany_name()}</td>
    	<td>${cmp.getCompany_website() }</td>
    	<td>${cmp.getIndustry()}</td>
    	<td><button style="background-color:green;"><a type="button" style="text-decoration:none; color:white;" class="btn btn-warning" href="/applynow?id=${cmp.getId()}">Apply now</a></button></td>
    	<!-- <td><a href="/applynow" ><button style="background-color: #4CAF50;">Apply now</button></a></td>
  	 -->
  	</tr>
  </c:forEach>
  
  
 
</table>

</body>
</html>


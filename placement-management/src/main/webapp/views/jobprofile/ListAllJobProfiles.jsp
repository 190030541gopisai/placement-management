<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<%@ page import="com.sdp.entity.Company" %>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
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

<h2>All Job Profiles</h2>

<table>
  <tr>
  	<th>Job Id</th>
    <th>Job Profile</th>
    <th>Company</th>
    <th>Location</th>
    <th>Status</th>
    <th>Apply</th>
    
  </tr>
  <c:forEach var="jp" items="${ jobprofiles }">
	<tr>
    	<td>${ jp.getId() }</td>
    	<td>${ jp.getName() }</td>
    	<td>${ jp.getCompany().getCompany_name() }</td>
    	<td>${ jp.getLocation() }</td>
    	<td>${ jp.isStatus() }</td>
    	<td><a href="https://${ jp.getCompany().getCompany_website() }" target="_blank">${ jp.getCompany().getCompany_website() }</a></td>
  	</tr>
  </c:forEach>
  
  
 
</table>

</body>
</html>
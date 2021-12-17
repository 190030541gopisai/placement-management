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

<h2>All Companies</h2>

<table>
  <tr>
  	<th>Id</th>
    <th>Name</th>
    <th>Website</th>
    <th>idustry</th>
  </tr>
  <c:forEach var="cmp" items="${companies }">
	<tr>
    	<td>${cmp.getId()}</td>
    	<td>${cmp.getCompany_name()}</td>
    	<td>${cmp.getCompany_website() }</td>
    	<td>${cmp.getIndustry()}</td>
  	</tr>
  </c:forEach>
  
  
 
</table>

</body>
</html>




<!--
<%
	List<Company> lst=(List<Company>)request.getAttribute("companies");
	for(Company company:lst){
		out.print("<h1>"+company.getCompany_name()+" "+company.getIndustry()+"</h1>");
		
	}
%>


 -->




<!-- 
 <c:forEach items="${lst}" var="company">t
            <tr>	
                <td>Employee ID: <c:out value="${company}"/></td>
            </tr>
 </c:forEach> -->
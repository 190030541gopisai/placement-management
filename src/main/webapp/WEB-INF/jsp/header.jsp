<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Header</title>
	<style>
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
	</style>
</head>
<body>
		
		<div class="topnav">
	      <center> <h2 style="color:white;">Get Placed</h2></center>
	      <form method="POST" id="myform" action="/logout"></form>
	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <a href="/" class="nav-link">Home</a>
	          <% if(session.getAttribute("username")!=null){%>
	          	
				<a href="/profile" class="nav-link">Profile</a>
				<a href="/job" class="nav-link">View Jobs</a>
				<a href="/appliedjobs" class="nav-link">Applied Jobs</a>
				<!--  <a href="/quizhome" class="nav-link">Mock Test</a> -->
					<a class="nav-link" href="#" onclick="document.getElementById('myform').submit()" >Logout</a>
				<h2 style="color:white; text-align: right;">welcome <%=session.getAttribute("username")%></h2>
	          <%}else{%>
	          <a href="/aboutus" class="nav-link">About Us</a>
	          <a href="/contactus" class="nav-link">Contact Us</a>
	          	<a href="/adminlogin" class="nav-link">IRP Login</a>
	          	<a href="/loginpage" class="nav-link">Student Login</a>
	          <%}%>
	        </ul>
	      </div>
	    </div>
		
</body>
</html>
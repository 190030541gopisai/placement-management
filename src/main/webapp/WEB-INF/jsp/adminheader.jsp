<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
@import url('https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css');
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

</style>
<body>
	<div class="topnav">
		<center> <h2 style="color:white;">Get Placed</h2></center>
	     
	      <form method="POST" id="myform" action="/adminlogout"></form>
	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <a href="/adminhome" class="nav-link">Home</a>
	          
	          <% if(session.getAttribute("username")!=null){%>
					<a href="/studentlist" class="nav-link">Student List</a>
			          <a href="/signuppage" class="nav-link">Add Student</a>
			          <a href="/allcompanies" class="nav-link">Jobs List</a>
			          <a href="/createcompany" class="nav-link">Add Jobs</a>
					  <a href="/dashboard" class = "nav-link">Dashboard</a>
			          <a class="nav-link" href="#" onclick="document.getElementById('myform').submit()" >Logout</a>
					
	          <%}else{%>
	          <a href="/aboutus" class="nav-link">About Us</a>
	          <a href="/contactus" class="nav-link">Contact Us</a>
	          	<a href="/adminlogin" class="nav-link">Login</a>
	          <%}%>
	        </ul>
	      </div>
	    </div>
	  
    <!-- END nav -->	
</body>
</html>
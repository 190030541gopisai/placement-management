<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

<style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
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
.card {
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  transition: 0.3s;
  width: 40%;
}

.card:hover {
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
}

.container {
  padding: 2px 16px;
}
body{
   background-image : url("40045.jpg");
  }
 h4{
  color : white;
 }
 h2{
   padding: 20px;
  border: 1px solid #4CAF50;
  color : white;
  background-color :black;
 }
a{
  color : yellow;
 }



</style>
</head>
<body>
<div class="topnav">
	      
	      <form method="POST" id="myform" action="/logout"></form>
	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <a href="/" class="nav-link">Home</a>
	          <% if(session.getAttribute("username")!=null){%>
	          	
				<a href="/profile" class="nav-link">Profile</a>
				<a href="/job" class="nav-link">job</a>
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
<h2>CONTACT US</h2>


<div class="card">
  <div class="container">
    <h4><b>Website:</b></h4> 
    <a th:href="@{'/welcome'}">Getplaced</a>
    <h4>Address:</h4>
    <p style="font-size:20px; color:white;">We our address in google map</p>
   <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d30634.63144941321!2d80.44900784757843!3d16.306128868741933!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a35f560937e9905%3A0x843368dd88f719ff!2sVolkswagen%20Guntur!5e0!3m2!1sen!2sin!4v1624456048318!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
    <h4>Email:</h4> 
    <a href="mailto:getplaced@gmail.com">gocar@gmail.com</a>
    <h4>Phone no:</h4> 
    <a href="tel:9999999999">9999999999</a>
    </div>
</div>
  </div>
</div>

</body>
</html> 

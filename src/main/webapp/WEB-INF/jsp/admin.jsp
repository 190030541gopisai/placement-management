<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LOGIN</title>
<meta charset="utf-8">
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
    
    
    
    .box{
    padding: 50px;
    margin:  0px auto;
    background-color: white;
    box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;
    border-radius: 10px;
    max-width: 600px;
}


table{
    width: 500px;
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
				<a href="/job" class="nav-link">job</a>
				<a href="/quizhome" class="nav-link">Mock Test</a>
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
    <!-- END nav -->
<div class="box">

	        <div class="row block-6">
	          <div class="col-md-6 order-md-last d-flex" style="left:380px">
	            <form method="POST" action="/adminlogin" class="bg-white p-5 contact-form">
	               <center>
	             <h2>LOGIN</h2>
	             <table>
	               
                    
                   
                <c:if test="${not empty errorMsg}">
                  <div class="alert alert-danger" role="alert">${errorMsg}</div>
                </c:if>
                <c:if test="${not empty successMsg}">
                  <div class="alert alert-success" role="alert">${successMsg}</div>
                </c:if>
                <tr>
                        <td>Username: </td>
                        <td>
	              <div class="form-group">
	                <input style="height:30px; width:300px;" type="text" name="username" class="form-control" placeholder="Username" required>
	             
	              </div>
	              </td>
	               </tr>
	               <br>
	               <br>
	               <tr>
	               <td>Password: </td>
                        <td>
	              <div class="form-group">
	                <input style="height:30px; width:300px;" type="password" name="password" class="form-control" placeholder="Password" required>
	              </div>
	              </td>
	               </tr>
	              
	              
	              
	              </table>
	              </center>
	              <div class="form-group">
	              <center>
	                <input type="submit" style="background-color:green; padding:10px; color:white;" value="LOGIN" class="btn btn-primary py-3 px-5">
	              </center>
	              </form>
	          </div>
	        </div>
</div>   	
</body>
</body>
</html>
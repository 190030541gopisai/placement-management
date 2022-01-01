<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
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
    padding: 10px;
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
    <title>PROFILE</title>
    <meta charset="utf-8">
        <script>
        function myFunction() {
        var x = document.getElementById("password");
        if (x.type === "password") {
            x.type = "text";
        } else {
            x.type = "password";
        }
        }
    </script>
   
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
<!-- END nav -->
   


            <div class="box">
                <h2>Profile</h2><hr>
                <form action="#">
                   
                <table>
                <tr>
                        <td>Student Id: </td>
                        <td>
                            <input style="height:30px; width:300px;" type="text" value="${idno}"   id="idno" disabled>
                        </td>
                    </tr>
                    <tr>
                        <td>Username: </td>
                        <td>
                            <input style="height:30px; width:300px;" type="text" value="${username}"   id="username" disabled>
                        </td>
                    </tr>
                    <tr>
                        <td>Name</td>
                        <td>
                            <input style="height:30px; width:300px;" type="text" value="${name}"   id="name" disabled>
                        </td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td>
                            <input style="height:30px; width:300px;" type="email" value="${email}"   id="email" disabled>
                        </td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td>
                            <input style="height:30px; width:300px;" type="password" value="${password}"   id="password" disabled><br>
                            <input type="checkbox" onclick="myFunction()">Show Password
                        </td>
                    </tr>
                    <tr>
                        <td>Phone</td>
                        <td>
                            <input style="height:30px; width:300px;" type="phone" value="${phone}"   id="phone" disabled>
                        </td>
                    </tr>
                </table>

                <center>
                    <a href="/educationdetails" style="text-decoration: none; color: dodgerblue;">Education Profile</a>
                </center>
            </form>
            </div>
           

</body>
</html>
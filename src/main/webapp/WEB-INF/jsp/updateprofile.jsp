<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
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
<div class="container">
        <div class="row">
            <div class="col-lg-8 ftco-animate order-md-last">
                <div class="comment-form-wrap pt-5">
                    <form action="/update" class="p-5 bg-light">
                    <table>
                        <div class="form-group">
                         <tr>
                            <td><label for="username">Username</label></td>
                           <td> <input type="text" value="${username}" class="form-control" id="username" disabled></td>
                         </tr>
                        </div>
                        <div class="form-group">
                        <tr>
                            <td><label for="name">Name</label></td>
                            <td><input type="text" value="${name}" class="form-control" id="name"></td>
                          </tr>
                        </div>
                        <div class="form-group">
                        <tr>
                            <td><label for="email">Email</label></td>
                            <td><input type="email" value="${email}" class="form-control" id="email" ></td>
                        </tr>
                        </div>
                        <div class="form-group">
                        <tr>
                            <td><label for="password">Password</label></td>
                            <td><input type="password" value="${password}" class="form-control" id="password"></td>
                            <td><input type="checkbox" onclick="myFunction()">Show Password</td>
                            </tr>
                        </div>
                        

                        <div class="form-group">
                        <tr>
                           <td> <label for="phone">Phone Number</label></td>
                            <td><input type="phone" value="${phone}" class="form-control" id="phone"></td>
                        </tr>
                        </div>
                        </table>
                        <div class="form-group">
                            <input type="submit" value="SUBMIT" class="btn btn-primary py-3 px-5">
                        </div>
                        
                    </form>
                </div>
            </div>
  </div>          
            
<br><br>


</body>
</html>
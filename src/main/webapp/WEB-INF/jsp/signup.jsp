<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- student signup done by admin -->

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<title>SIGNUP</title>
    <meta charset="utf-8">
    <style>
    
    @import url('https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css');
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
  background-color:orange;
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
    <!--  
    <script>
      var check = function() {
        if (document.getElementById('password').value ==
          document.getElementById('cnfpassword').value) {
          document.getElementById('message').style.color = 'green';
          document.getElementById('message').innerHTML = 'matching';
        } else {
          document.getElementById('message').style.color = 'red';
          document.getElementById('message').innerHTML = 'not matching';
        }
      }
    </script>-->
    <script>
      $(function() {
      $("#cnfpassword").blur(function() {
        var user_pass = $("#password").val();
        var confirm_user_pass = $("#cnfpassword").val();
        var enter = $("#enter");

        if (user_pass.length == 0) {
          enter.prop('disabled', true)
        } 
        else if (user_pass == confirm_user_pass) {
          enter.prop('disabled', false)
        } 
        else {
          enter.prop('disabled', true)
        }
      });
    });
    </script>
</head>
<body>
<%@ include file = "adminheader.jsp" %>
    <center><h2>Create New Student</h2></center>
<div class="box">		

		<div class="row block-6">
	          <div class="col-md-6 order-md-last d-flex" style="left:380px">
	            <form method="POST" action="/signuppage" class="bg-white p-5 contact-form">
                <c:if test="${not empty errorMsg}">
                  <div class="alert alert-danger" role="alert">${errorMsg}</div>
                </c:if>
                <center>
                <table>
                <div class="form-group">
	                <h3>Id no</h3>
	                <input style="height:30px; width:300px;" type="text" name="idno" class="form-control" placeholder="Enter idno" required>
	              </div>
	              <div class="form-group">
	                <h3>User name</h3>
	                <input style="height:30px; width:300px;" type="text" name="username" class="form-control" placeholder="Enter Username" required>
	              </div>
	              <div class="form-group">
	              <h3>Name</h3>
	                <input style="height:30px; width:300px;" type="text" name="name" class="form-control" placeholder="Enter Name" required>
	              </div>
	              <div class="form-group">
	              <h3>Email</h3>
	                <input style="height:30px; width:300px;" type="email" name="email" class="form-control" placeholder="Enter Email" required>
	              </div>
	              <div class="form-group">
	              <h3>Password</h3>
	                <input style="height:30px; width:300px;" type="password" name="password" id="password"  class="form-control" placeholder="Enter Password" required>
	              </div>
	              <!--  
	              <div class="form-group">
	                <input style="height:30px; width:300px;" type="password" name="cnfpassword" id="cnfpassword" onkeyup='check();' class="form-control" placeholder="Confirm Password" required>
                   <span id='message'></span>
	              </div>-->
	              <div class="form-group">
	              <h3>Phone no</h3>
	                <input style="height:30px; width:300px;" type="number" name="phone" class="form-control" placeholder="Enter Phone Number" required>
	              </div>
	              <br>
	              
	              </table>
	              </center>
	              <div class="form-group">
	              <center>
	                <input style="background-color:green; padding:10px; color:white;" id="enter"  type="submit" value="SIGNUP" class="btn btn-primary py-3 px-5">
	              </center>
	              </div>
	            </form>
	          </div>
	        </div>

  </div>  
  

  
</body>
</html>
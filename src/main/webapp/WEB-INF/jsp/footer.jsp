<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Footer</title>
	<style>
		.footer{
			background-color:black;
			color:white;
			text-align: center;
		}
		
		
		.sm{
		  margin: 20px 0;
		  color: white;
		}
		
		
		.sm a{
		  display: inline-flex;
		  width: 40px;
		  height: 40px;
		  justify-content: center;
		  align-items: center;
		  color: #2c3e50;
		  font-size: 18px;
		  transition: 0.4s;
		  border-radius: 50%
		}
		.sm a:hover{
		  background: #2c3e50;
		  color: white;
		}
		
		h4{
		font-color:"white";
		}
	</style>
</head>
<body>
	<div class="footer">

	  
	<br>  
	<br>
	        <a th:href="@{'/'}"  style="text-decoration: none;"><img src="logo.png" width="300" height="200"> </a>
	       <br> <br>
	  
	  <div class="sm">
	        
	            <a href="https://www.facebook.com/dinesh.guduru.1" style="background-color: white;"><i class="fab fa-facebook-f"></i></a>
	            <a href="https://twitter.com/Dinesh_1234567"  style="background-color: white;"><i class="fab fa-twitter"></i></a>
	            <a href="https://www.instagram.com/dineshvishnukanth1/" style="background-color: white;"><i class="fab fa-youtube" ></i></a>
	            <a href="https://www.instagram.com/dineshvishnukanth1/"  style="background-color: white;"><i class="fab fa-instagram"></i></a>
	          
	  </div>  
	        <small style="color: white;">
	            Copyright &copy; 2021 All rights reserved <br>
	        </small>
	<br>
	</div>
</body>
</html>
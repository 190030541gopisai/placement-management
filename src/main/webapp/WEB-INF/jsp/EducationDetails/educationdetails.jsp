<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
  background-color:orange;
}
.form-style-9{
	max-width: 50%;
	background: #FAFAFA;
	padding: 30px;
	margin: 50px auto;
	box-shadow: 1px 1px 25px rgba(0, 0, 0, 0.35);
	border-radius: 10px;
	border: 6px solid #305A72;
}
.form-style-9 ul{
	padding:10px;
	margin-left:30%;
	list-style:none;
}
.form-style-9 ul li{
	display: block;
	margin-bottom: 10px;
	min-height: 35px;
}
.form-style-9 ul li  .field-style{
	box-sizing: border-box; 
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box; 
	padding: 10px;
	outline: none;
	border: 1px solid #B0CFE0;
	-webkit-transition: all 0.30s ease-in-out;
	-moz-transition: all 0.30s ease-in-out;
	-ms-transition: all 0.30s ease-in-out;
	-o-transition: all 0.30s ease-in-out;

}.form-style-9 ul li  .field-style:focus{
	box-shadow: 0 0 5px #B0CFE0;
	border:1px solid #B0CFE0;
}
.form-style-9 ul li .field-split{
	width: 49%;
}
.form-style-9 ul li .field-full{
	width: 100%;
}
.form-style-9 ul li input.align-left{
	float:left;
}
.form-style-9 ul li input.align-right{
	float:right;
}
.form-style-9 ul li textarea{
	width: 100%;
	height: 100px;
}
.form-style-9 ul li input[type="button"], 
.form-style-9 ul li input[type="submit"] {
	-moz-box-shadow: inset 0px 1px 0px 0px #3985B1;
	-webkit-box-shadow: inset 0px 1px 0px 0px #3985B1;
	box-shadow: inset 0px 1px 0px 0px #3985B1;
	background-color: #216288;
	border: 1px solid #17445E;
	display: inline-block;
	cursor: pointer;
	color: #FFFFFF;
	padding: 8px 18px;
	text-decoration: none;
	font: 12px Arial, Helvetica, sans-serif;
}
.form-style-9 ul li input[type="button"]:hover, 
.form-style-9 ul li input[type="submit"]:hover {
	background: linear-gradient(to bottom, #2D77A2 5%, #337DA8 100%);
	background-color: #28739E;
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
</head>
<body>
<%@ include file="../header.jsp" %>

		<h1>Please enter carefully <mark style="color:red;">No More Change</mark> can be done Once Entered!</h1>
		<form:form method="post" action="educationdetails/save" modelAttribute ="education_details" class="form-style-9"> 
		<h1>Education Details</h1>
			<ul>	
				School Name 
				<li>
					<form:input path = "schoolname" placeholder="Enter School name" class="field-style field-split align-left" /><br>
				</li>
				School CGPA
				<li>
					<form:input path = "schoolcgpa" placeholder="Enter Schoolpa cgpa"  class="field-style field-split align-left" /><br>
				</li>
				Inter College Name
				<li>
					<form:input path = "intercollagename" placeholder="Enter inter collage name"  class="field-style field-split align-left" /><br>
				</li>
				Inter College CGPA 
				<li>
					<form:input path = "intercgpa" placeholder="Enter inter cgpa"  class="field-style field-split align-left" /><br>
				</li>
				Btech College/University Name 
				<li>
					<form:input path = "btechcollagename" placeholder="Enter btech collage name"  class="field-style field-split align-left" /><br>
				</li>
				Btech CGPA 
				<li>
					<form:input path = "btechcgpa" placeholder="Enter btech cgpa"  class="field-style field-split align-left" /><br>
				</li>
				No Of Backlogs 
				<li>
					<form:input path = "noofbacklogs" placeholder="Enter no of backlogs"  class="field-style field-split align-left" /><br>
				</li>
			
			<input type="submit" style="" value = "create">
			</ul>
		</form:form>
</body>
</html>
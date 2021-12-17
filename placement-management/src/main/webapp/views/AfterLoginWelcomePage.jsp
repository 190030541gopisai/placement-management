<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name='viewport' content='width=device-width, initial-scale=1'>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<!--Get your own code at fontawesome.com-->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<style>
/* Add a black background color to the top navigation */
.topnav {
  background-color: yellow;
  overflow: hidden;
}

/* Style the links inside the navigation bar */
.topnav form {
  float: center;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}
.topnav a {
  float: right;
  color: blue;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}




.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  margin: auto;
  text-align: center;
  font-family: arial;
}

.price {
  color: grey;
  font-size: 22px;
}

.card button {
  border: none;
  outline: 0;
  padding: 12px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}

.card button:hover {
  opacity: 0.7;
}


img{
height:200px;
}


.column {
  float: left;
  width: 25%;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}
body {
  font-family: Arial;
}

* {
  box-sizing: border-box;
}

a.example input[type=text] {
  padding: 10px;
  font-size: 17px;
  border: 1px solid grey;
  float: left;
  width: 80%;
  background: #f1f1f1;
}

a.example button {
  float: left;
  width: 20%;
  padding: 10px;
  background: #2196F3;
  color: white;
  font-size: 17px;
  border: 1px solid grey;
  border-left: none;
  cursor: pointer;
}

a.example button:hover {
  background: #0b7dda;
}

a.example::after {
  content: "";
  clear: both;
  display: table;
}


</style>
<body>


<div class="topnav">
<a class="active" th:href="@{'/login'}">Signout</a>
 <a class="active" th:href="@{'/profile/{id}'}">PROFILE</a>
 <a class="active" th:href="@{'/about'}">ABOUT</a>
 <a class="active" th:href="@{'/contactus'}">CONTACTUS</a>
 <a class="example" action="/action_page.php" style="margin:auto;max-width:300px">
 <input type="text" placeholder="Search.." name="search2">
 <button type="submit"><i class="fa fa-search"></i></button>
 </a> 
</div>

<br>
<br>
<div class="row">

<div class="column">
<div class="card">
  <h1>Amozon</h1>
  <a>last date to apply:20-12-2021</a><br><br>
  <a>vacancy:100</a><br><br>
  <a>Full time job</a><br><br>
  <a>package:1.5</a>  <br><br>
  
  
  <button>Apply Now</button></a></p>
 
</div><br><br>
</div>

<div class="column">
<div class="card">
  <h1>Google</h1>
  <a>last date to apply:20-12-2021</a><br><br>
  <a>vacancy:100</a><br><br>
  <a>Full time job</a><br><br>
  <a>package:1.5</a>  <br><br>
  
  
  <button>Apply Now</button></a></p>
 
</div><br><br>
</div>

<div class="column">
<div class="card">
  <h1>Microsoft</h1>
  <a>last date to apply:20-12-2021</a><br><br>
  <a>vacancy:100</a><br><br>
  <a>Full time job</a><br><br>
  <a>package:1.5</a>  <br><br>
  
  
  <button>Apply Now</button></a></p>
 
</div><br><br>
</div>

<div class="column">
<div class="card">
  <h1>infosys</h1>
  <a>last date to apply:20-12-2021</a><br><br>
  <a>vacancy:100</a><br><br>
  <a>Full time job</a><br><br>
  <a>package:1.5</a>  <br><br>
  
  
  <button>Apply Now</button></a></p>
 
</div><br><br>
</div>

<div class="column">
<div class="card">
  <h1>Oracle</h1>
  <a>last date to apply:20-12-2021</a><br><br>
  <a>vacancy:100</a><br><br>
  <a>Full time job</a><br><br>
  <a>package:1.5</a>  <br><br>
  
  
  <button>Apply Now</button></a></p>
 
</div><br><br>
</div>


</div>
</body>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>


</html>
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

th, td {
  border-style:solid;
  border-color: #96D4D4;
}


</style>
    <title>Apply now</title>
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

			<%@ include file="header.jsp" %>
            <div class="box">
                <h2>Apply now</h2><hr>
                <h4>Company Details</h4>
                <table>
                	<tr>
                		<th>Id</th>
                		<th>Name</th>
                		<th>Website</th>
                		<th>Industry</th>
                		<th>Vacancies</th>
                	</tr>
                	<tr>
                		<td>${company.getId()}</td>
                		<td>${company.getCompany_name()}</td>
                		<td>${company.getCompany_website() }</td>
                		<td>${company.getIndustry()}</td>
			    		<td>${company.getCompany_size()}</td>
                	</tr>
                	
			    	
                </table>
            	<h4>Student details</h4>
                <form action="#">
                
                  
                <table>
                    <tr>
                        <td>Username: </td>
                        <td>
                            <input style="height:30px; width:300px;" type="text" value="${user.getUsername()}"   id="username" disabled>
                        </td>
                    </tr>
                    <tr>
                        <td>Name</td>
                        <td>
                            <input style="height:30px; width:300px;" type="text" value="${user.getName()}"   id="name" disabled>
                        </td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td>
                            <input style="height:30px; width:300px;" type="email" value="${user.getEmail()}"   id="email" disabled>
                        </td>
                    </tr>
                    
                    <tr>
                        <td>Phone</td>
                        <td>
                            <input style="height:30px; width:300px;" type="phone" value="${user.getPhone()}"   id="phone" disabled>
                        </td>
                   
                    </tr>
                    
                     <td>id</td>
                       <td><input style="height:30px; width:300px;" type="id" value="${user.getIdno()}" id="id" disabled></td>
                    </tr>
                </table>

                <p>For account deactivation please contact to site owner</p>
                <center>
                    <a href="" style="text-decoration: none; color: dodgerblue;">Apply now</a>
                </center>
            </form>
            </div>
           

</body>
</html>
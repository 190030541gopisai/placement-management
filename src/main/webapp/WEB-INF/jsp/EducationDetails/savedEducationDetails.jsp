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
    <title>Education Details</title>
    <meta charset="utf-8">
   
   
</head>
<body>

<%@ include file="../header.jsp" %>


            <div class="box">
                <h2>Education Details</h2><hr>
                <form action="#">
                   
                <table>
                <tr>
                        <td>School Name: </td>
                        <td>
                            <input style="height:30px; width:300px;" type="text" value="${educationdetails.getSchoolname()}"   id="idno" disabled>
                        </td>
                    </tr>
                    <tr>
                        <td>School CGPA: </td>
                        <td>
                            <input style="height:30px; width:300px;" type="text" value="${educationdetails.getSchoolcgpa()}"   id="username" disabled>
                        </td>
                    </tr>
                    <tr>
                        <td>Inter College Name</td>
                        <td>
                            <input style="height:30px; width:300px;" type="text" value="${educationdetails.getIntercollagename()}"   id="name" disabled>
                        </td>
                    </tr>
                    <tr>
                        <td>Inter CGPA </td>
                        <td>
                            <input style="height:30px; width:300px;" type="email" value="${educationdetails.getIntercgpa()}"   id="email" disabled>
                        </td>
                    </tr>
                    <tr>
                        <td>BTech College Name</td>
                        <td>
                            <input style="height:30px; width:300px;"  value="${educationdetails.getBtechcollagename()}"   id="password" disabled><br>
                        </td>
                    </tr>
                    <tr>
                        <td>BTech CGPA</td>
                        <td>
                        <input style="height:30px; width:300px;"  value="${educationdetails.getBtechcgpa()}"   id="password" disabled><br>
                            
                        </td>
                    </tr>
                </table>

                
            </form>
            </div>
           

</body>
</html>
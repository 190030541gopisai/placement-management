<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <style>
		.card {
			float:left;
		  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
		  width: 80%;
		 
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
	</style>

</head>
<body style="background-color:white;">

    <%@ include file="../adminheader.jsp" %>
    <div class="card">
        <canvas id="myChart"></canvas>
    </div>    
    <script>
        console.log("working")
        let myChart = document.getElementById("myChart").getContext("2d");
        let company_names = []
        let vacancies = []
        <c:forEach var="cmp" items="${companies }">
            company_names.push("${cmp.getCompany_name()}");
            vacancies.push("${cmp.getCompany_size()}")
        </c:forEach>
        console.log(company_names)
        console.log("end working")

        let barchart = new Chart(myChart,{
            type:'bar',
            data:{
                // labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange'],
                labels: company_names,
                datasets: [{
                    label: 'Vacancies',
                    // data: [12, 19, 3, 5, 2, 3]
                    data: vacancies,
                    backgroundColor: [
                        'rgba(255, 99, 132)',
                        'rgba(54, 162, 235)',
                        'rgba(255, 206, 86)',
                        'rgba(75, 192, 192)',
                        'rgba(153, 102, 255)',
                        'rgba(255, 159, 64)'
                    ],
                }]
        
        		
        
            },
            options:{}
        });



    </script>
    

      
</body>
</html>
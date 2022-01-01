<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
@import url('https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css');
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
  background-color:orange;
}


/* Styling the area of the slides */
#slideshow {
overflow: hidden;
height: 510px;
width: 728px;
margin: 0 auto;
}

/* Style each of the sides
with a fixed width and height */
.slide {
float: left;
height: 510px;
width: 728px;
}

/* Add animation to the slides */
.slide-wrapper {

/* Calculate the total width on the
basis of number of slides */
width: calc(728px * 4);

/* Specify the animation with the
duration and speed */
animation: slide 10s ease infinite;
}

/* Set the background color
of each of the slides */
.slide:nth-child(1) {
background: green;
}

.slide:nth-child(2) {
background: pink;
}

.slide:nth-child(3) {
background: red;
}

.slide:nth-child(4) {
background: yellow;
}

/* Define the animation
for the slideshow */
@keyframes slide {

/* Calculate the margin-left for
each of the slides */
20% {
	margin-left: 0px;
}

40% {
	margin-left: calc(-728px * 1);
}

60% {
	margin-left: calc(-728px * 2);
}

80% {
	margin-left: calc(-728px * 3);
}
}



</style>
</head>
<body>
 
</div>
	<%@ include file="header.jsp" %>

    <!-- END nav -->
		
<div id="slideshow">
		<div class="slide-wrapper">
			
		<!-- Define each of the slides
		and write the content -->
		
			<div class="slide">
							<img style="height: 510px; width: 728px;"src="3.jfif">
			
			</div>
			<div class="slide">
				<img style="height: 510px; width: 728px;"src="1.jfif">
			</div>
			<div class="slide">
				<img style="height: 510px; width: 728px;"src="2.jfif">
			</div>
			<div class="slide">
								<img style="height: 510px; width: 728px;"src="4.png">
				
			</div>
		</div>
	</div>
	<br><br>
	<center>
	<img id="myImg" src="d.png" alt="Snow" style="width:300px;height:150px;">
	<img id="myImg" src="e.png" alt="Snow" style="width:300px;height:150px;">
	<img id="myImg" src="g.png" alt="Snow" style="width:300px;height:150px;">
</center>
	
<br><br>
<center>
	
	<img id="myImg" src="a.jfif" alt="Snow" style="width:300px;height:150px;">
	<img id="myImg" src="b.png" alt="Snow" style="width:300px;height:150px;">
	<img id="myImg" src="c.png" alt="Snow" style="width:300px;height:150px;">
</center>

</div>
<br><br>
	
	<%@ include file = "footer.jsp" %>
	
   

</body>
</html>
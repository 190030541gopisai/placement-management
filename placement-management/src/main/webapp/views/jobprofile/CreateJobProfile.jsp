<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>




<%@ include file="../index.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">

	.center {
  margin: auto;
  width: 60%;
  border: 3px solid green;
  padding: 10px;
}
</style>
	
</head>
<body>
<h2>Create Job Profile</h2>
	<form:form class = "center" method = "post" action="/jobprofile/createjobprofile-submit" modelAttribute="jobprofile">
	  <div class="form-group row">
	    <label for="JobProfileName" class="col-sm-4 col-form-label">Job Profile Name</label>
	    <div class="col-sm-10">
	      <form:input path = "name" id="JobProfileName" class="form-control"/>
	    </div>
	  </div>
	  <div class="form-group row">
	    <label for="company" class="col-sm-4 col-form-label">Company Id</label>
	    <div class="col-sm-10">
	      <form:select path="company">
	      	<c:forEach var = "cmp" items="${companies }">
	      		<form:option value="${cmp.getId() }">${cmp.getCompany_name() }</form:option>
	      	</c:forEach>
		  </form:select>
	    </div>
	  </div>
	  <div class="form-group row">
	    <label for="location" class="col-sm-4 col-form-label">Location</label>
	    <div class="col-sm-10">
	      <form:select path = "location" id="location" class="form-control">
				<option value="Andhra Pradesh">Andhra Pradesh</option>
				<option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
				<option value="Arunachal Pradesh">Arunachal Pradesh</option>
				<option value="Assam">Assam</option>
				<option value="Bihar">Bihar</option>
				<option value="Chandigarh">Chandigarh</option>
				<option value="Chhattisgarh">Chhattisgarh</option>
				<option value="Dadar and Nagar Haveli">Dadar and Nagar Haveli</option>
				<option value="Daman and Diu">Daman and Diu</option>
				<option value="Delhi">Delhi</option>
				<option value="Lakshadweep">Lakshadweep</option>
				<option value="Puducherry">Puducherry</option>
				<option value="Goa">Goa</option>
				<option value="Gujarat">Gujarat</option>
				<option value="Haryana">Haryana</option>
				<option value="Himachal Pradesh">Himachal Pradesh</option>
				<option value="Jammu and Kashmir">Jammu and Kashmir</option>
				<option value="Jharkhand">Jharkhand</option>
				<option value="Karnataka">Karnataka</option>
				<option value="Kerala">Kerala</option>
				<option value="Madhya Pradesh">Madhya Pradesh</option>
				<option value="Maharashtra">Maharashtra</option>
				<option value="Manipur">Manipur</option>
				<option value="Meghalaya">Meghalaya</option>
				<option value="Mizoram">Mizoram</option>
				<option value="Nagaland">Nagaland</option>
				<option value="Odisha">Odisha</option>
				<option value="Punjab">Punjab</option>
				<option value="Rajasthan">Rajasthan</option>
				<option value="Sikkim">Sikkim</option>
				<option value="Tamil Nadu">Tamil Nadu</option>
				<option value="Telangana">Telangana</option>
				<option value="Tripura">Tripura</option>
				<option value="Uttar Pradesh">Uttar Pradesh</option>
				<option value="Uttarakhand">Uttarakhand</option>
				<option value="West Bengal">West Bengal</option>
	      </form:select>
	    </div>
	  </div>
	  	  
	    <button type="submit" class="btn btn-primary">Create</button>
	  
	  
	  
	</form:form>
	
</body>
</html>
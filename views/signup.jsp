
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link href="resources/signup.css" rel="stylesheet">
<title>Sign Up</title>
</head>
<%@ include file="header.jsp"%>
<br><br><br><br>
<body>
<div id="margintop">
<form class="form-horizontal" action="addnewuser" method="post">
  <div class="form-group">
    <label class="control-label col-sm-offset-2 col-sm-3" for="name">Name:</label>
    <div class="col-sm-3">
      <input type="text" class="form-control" name="name" id="name" placeholder="Enter name" required>
    </div>
  </div>
    <div class="form-group">
    <label class="control-label col-sm-offset-2 col-sm-3" for="uname">Username:</label>
    <div class="col-sm-3">
      <input type="text" class="form-control" name="uname" id="uname" placeholder="Enter username" required>
    </div>
  </div>
    <div class="form-group">
    <label class="control-label col-sm-offset-2 col-sm-3" for="email">Email:</label>
    <div class="col-sm-3">
      <input type="email" class="form-control" name="email" id="email" placeholder="Enter email" required>
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-offset-2 col-sm-3" for="pwd">Password:</label>
    <div class="col-sm-3"> 
      <input type="password" class="form-control" name="pwd" id="pwd" placeholder="Enter password" required>
    </div>
  </div>
    <div class="form-group">
    <label class="control-label col-sm-offset-2 col-sm-3" for="rpwd">Re-Enter Password:</label>
    <div class="col-sm-3"> 
      <input type="password" class="form-control" id="rpwd" placeholder="Re-Enter password" required>
    </div>
  </div>
      <div class="form-group">
    <label class="control-label col-sm-offset-2 col-sm-3" for="mnum">Mobile number:</label>
    <div class="col-sm-3"> 
      <input type="number" class="form-control" name="mnum" id="mnum" placeholder="Enter 10 digit Mobile number" required>
    </div>
  </div>
      <div class="form-group">
    <label class="control-label col-sm-offset-2 col-sm-3" for="address">Address:</label>
    <div class="col-sm-3"> 
      <input type="text" class="form-control" name="address" id="address" placeholder="Enter your address" required>
    </div>
  </div>
        <div class="form-group">
    <label class="control-label col-sm-offset-2 col-sm-3" for="city">City:</label>
    <div class="col-sm-3"> 
      <input type="text" class="form-control" name="city" id="city" placeholder="Enter your city name" required>
    </div>
  </div>
        <div class="form-group">
    <label class="control-label col-sm-offset-2 col-sm-3" for="pincode">Pincode:</label>
    <div class="col-sm-3"> 
      <input type="number" class="form-control" name="pincode" id="pincode" placeholder="Enter your pincode" required>
    </div>
  </div>
  <div class="form-group"> 
    <div class="col-sm-offset-5 col-sm-3">
    </div>
  </div>
  <div class="form-group"> 
    <div class="col-sm-offset-5 col-sm-3">
      <button type="submit" class="btn btn-dark" id="subbutton">Register</button>
    </div>
  </div>
</form>
</div>
</body>
</html>
<%@ include file="footer.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Successful!</title>
<link rel="stylesheet" href="/style.css"/>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
</head>
<body>
<center>

	<div class="jumbotron jumbotron-fluid">
		<div class="container">
			<h1 class="display-4">Encapsulation Underway!</h1>
			<p class="lead">Thanks for submitting your application, you won't regret it. </p>
		</div>
	</div>


<table class ="blueTable">
<tr><td>First Name:</td><td> ${ user.firstName } </td></tr>


<tr><td>Last Name:</td><td> ${ user.lastName }</td></tr>


<tr><td>SSN#:</td><td> ***-**-**** </td></tr>


<tr><td>Shoe Size:</td><td> ${ user.shoeSize }</td></tr>

<tr><td>Birthday</td><td> ${ user.birthDate }</td></tr>

<tr><td>E-Mail</td><td> ${ user.email }</td></tr>


<tr><td>Preferred Roast:</td><td> ${ user.roast }</td></tr>


<tr><td>Preferred Extraction: </td><td> ${ user.extraction }</td></tr>
</table>

<br>



<div class="card text-center" style="width: 18rem;">
  <div class="card-body">
    <h5 class="card-title">Submission Status</h5>
    <p class="card-text">Your application for membership is currently being reviewed. </p>
    <a href="/" class="btn btn-primary">Go Home</a>
  </div>
</div>
</center>
</body>
</html>
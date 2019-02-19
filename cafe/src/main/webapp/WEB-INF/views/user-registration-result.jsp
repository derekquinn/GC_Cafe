<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Successful!</title>
<link rel="stylesheet" href="/style.css"/>
</head>
<body>
<center>
<h3>Registration Data Captured</h3>


<table class ="blueTable">
<tr><td>First Name:</td><td> ${ user.firstName } </td></tr>


<tr><td>Last Name:</td><td> ${ user.lastName }</td></tr>


<tr><td>SSN#:</td><td> ${ user.socialSecurity } </td></tr>


<tr><td>Shoe Size:</td><td> ${ user.shoeSize }</td></tr>


<tr><td>Preferred Roast:</td><td> ${ user.roast }</td></tr>


<tr><td>Preferred Extraction: </td><td> ${ user.extraction }</td></tr>
</table>
<br>
<i> Your application for membership is currently being reviewed. </i>
</center>

</body>
</html>
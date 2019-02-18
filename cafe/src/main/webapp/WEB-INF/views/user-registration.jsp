<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cafe Registration</title>
</head>
<body>

	<i>At A Cafe Called Encapsulation, we require enhanced
		interrogation and a comprehensive application before you will be
		admitted to our facility.</i>
		
		

	<form action="/user-registration-result" method="post">
	<table>
	<br>
	<tr><td><label>First Name </label></td> <td><input type="text" id="firstName" name="firstName" pattern="[A-Z][a-z]*" /></td> <td><label>Last Name</label></td><td><input  type="text" id="lastName" name="lastName" pattern="[A-Z][a-z]*"/></td></tr>
	
	<tr><td><label>Social Security Number: </label></td> <td><input type="password" id="socialSecurity" name="socialSecurity" /></td> <td><label>Shoe Size (EU)</label></td><td><input  type="number" max="18" id="shoeSize" name="shoeSize"/></td></tr>
	
	</table>
	<button>Submit Application</button>
	</form>
</body>
</html>
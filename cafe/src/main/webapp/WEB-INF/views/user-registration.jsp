<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/style.css" />
<title>Cafe Registration</title>
</head>
<body>
	<center>
	<h3> <i>A CAFE CALLED ENCAPSULATION </i></h3>

		<i>At A Cafe Called Encapsulation, we require enhanced
			interrogation and a comprehensive application before you will be
			admitted to our facility.</i>
	</center>


	<form action="/user-registration-result" method="post">
		<br>
		<center>
			<H3>Personal Data</H3>
			<table class="blueTable">

				<tr>
					<td><label>First Name </label></td>
					<td><input type="text" id="firstName" name="firstName"
						pattern="[A-Z][a-z]*" /></td>
					<td><label>Last Name</label></td>
					<td><input type="text" id="lastName" name="lastName"
						pattern="[A-Z][a-z]*" /></td>
					
				</tr>
				
				<tr><td><label>E-Mail</label></td><td><input type="email" id="email" name="email"></td><td><label>Birthday</label></td><td><input type="date" id="birthDate" name="birthDate"></td></tr>

				<tr>
					<td><label>Social Security Number: </label></td>
					<td><input type="password" maxlength="9" id="socialSecurity"
						name="socialSecurity" /></td>
					<td><label>Shoe Size (EU)</label></td>
					<td><input type="number" max="52" id="shoeSize"
						name="shoeSize" /></td>
				</tr>
			</table>
			<br>
			<H3>Coffee Preferences</H3>
			<fieldset>
				<p>
					Roast Preference: <input type="radio" name="roast" value="Light">
					Light <input type="radio" name="roast" value="Medium">Medium
					<input type="radio" name="roast" value="Dark"> Dark
				</p>
				<p>
					Extraction Preference: <input type="radio" name="extraction"
						value="Espresso"> Espresso <input type="radio"
						name="extraction" value="Drip"> Drip <input type="radio"
						name="extraction" value="French Press"> French Press
				</p>

			</fieldset>


			<button>Submit Application</button>
	</form>
	</center>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/style.css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Cafe Registration</title>
</head>
<body>
	<center>
		<h3>
			<i>A CAFE CALLED ENCAPSULATION </i>
		</h3>

		<i>A Cafe Called Encapsulation, requires a comprehensive
			application and interview process before you will be admitted to our
			facility.</i>
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

				<tr>
					<td><label>E-Mail</label></td>
					<td><input type="email" id="email" name="email"></td>
					<td><label>Birthday</label></td>
					<td><input type="date" id="birthDate" name="birthDate"></td>
				</tr>

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
			
			<p> Roast Preference</p>
			
				<div class="btn-group btn-group-toggle" data-toggle="buttons">
					<label class="btn btn-secondary active"> <input
						type="radio" name="roast" id="light" value="Light" autocomplete="off" checked>
						Light
					</label> <label class="btn btn-secondary"> <input type="radio"
						name="roast" id="medium" value="Medium" autocomplete="off"> Medium
					</label> <label class="btn btn-secondary"> <input type="radio"
						name="roast" id="dark" value="Dark" autocomplete="off"> Dark
					</label>
				</div>
			
			
				<p>
					Extraction Preference: <input type="radio" name="extraction"
						value="Espresso"> Espresso <input type="radio"
						name="extraction" value="Drip"> Drip <input type="radio"
						name="extraction" value="French Press"> French Press
				</p>

			
			</fieldset>


			<button class="btn btn-dark">Submit To Encapsulation</button>
	</form>
	</center>
	<!-- BOOTSTRAP -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>

</body>
</html>
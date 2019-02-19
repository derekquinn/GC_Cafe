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


	<div class="jumbotron jumbotron-fluid">
		<div class="container">
			<h1 class="display-4">Encapsulation Registration</h1>
			<p class="lead">Submit your application and you're one step away
				from joining the worlds most exclusive coffee shop.</p>
		</div>
	</div>



	<form action="/user-registration-result" method="post">
		<br>
		<center>
			<H3>Personal Data</H3>
			<br>
			<table class="blueTable">

				<tr>
					<td><label>First Name </label></td>
					<td><input type="text" id="firstName" name="firstName"
						placeholder="Steve" pattern="[A-Z][a-z]*" /></td>
					<td><label>Last Name</label></td>
					<td><input type="text" id="lastName" name="lastName"
						placeholder="Jobs" pattern="[A-Z][a-z]*" /></td>

				</tr>

				<tr>
					<td><label>E-Mail</label></td>
					<td><input type="email" id="email" name="email"
						placeholder="steve@apple.com"></td>
					<td><label>Birthday</label></td>
					<td><input type="date" id="birthDate" name="birthDate"></td>
				</tr>

				<tr>
					<td><label>Social Security Number: </label></td>
					<td><input type="password" maxlength="9" id="socialSecurity"
						name="socialSecurity" placeholder="No Hyphens" /></td>
					<td><label>Shoe Size (EU)</label></td>
					<td><input type="number" max="52" id="shoeSize"
						name="shoeSize" placeholder="EU Shoe Size" /></td>
				</tr>
			</table>
			<fieldset>
				<br>
				<H3>Essay Portion</H3>

				<div class="form-group">
					<label for="exampleFormControlTextarea1"><i>In no less than 1000 words, please describe coffee (as it relates to Encapsulation). </i></label>
					<textarea class="form-control" id="exampleFormControlTextarea1"
						rows="5"></textarea>
				</div>




			</fieldset>
			<br>
			<H3>Coffee Preferences</H3>
			<fieldset>

				<p>Roast Preference</p>

				<div class="btn-group btn-group-toggle" data-toggle="buttons">
					<label class="btn btn-secondary active"> <input
						type="radio" name="roast" id="light" value="Light"
						autocomplete="off" checked> Light
					</label> <label class="btn btn-secondary"> <input type="radio"
						name="roast" id="medium" value="Medium" autocomplete="off">
						Medium
					</label> <label class="btn btn-secondary"> <input type="radio"
						name="roast" id="dark" value="Dark" autocomplete="off">
						Dark
					</label>
				</div>
				<br> <br>

				<p>Extraction Preference:</p>

				<div>
					<select name="extraction">
						<option value="Espresso">Espresso</option>
						<option value="Drip">Drip Machine</option>
						<option value="French Press">French Press</option>
						<option value="Pour Over">Pour Over</option>
					</select>
				</div>






			</fieldset>


			<br>

			<button class="btn btn-dark">Submit To Encapsulation</button>
			<br>
			<br>
			<br>
			
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
<footer>

<div class="card" style="width: 18rem;">
  <div class="card-body">
    <h5 class="card-title">Whoops!</h5>
    <h6 class="card-subtitle mb-2 text-muted">Not ready to apply yet?</h6>
    <p class="card-text">Feel free to return to the home page if you're not ready to apply.</p>
    <a href="/" class="card-link">Home</a>
  </div>
</div>

</footer>
</html>
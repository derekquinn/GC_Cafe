<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- BOOTSTRAP STYLE SHEET -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<title>Product Manager</title>
</head>
<body>

	<div class="jumbotron">
		<h1 class="display-4">Add an Item</h1>

		<hr class="my-4">


		<p class="lead">
			<b>Add product info below to list on the encapsulation menu</b>
		</p>



	<form action="/add-item" method="post">
		<H3>New Product Information</H3>
		<br>
		<table class="blueTable" width="50%">

			<tr>
				<td><label>Product Name </label></td>
				<td><input type="text" id="name" name="name"
					placeholder="Coffee Product" required /></td>
			</tr>
			<tr>
				<td><label>Description</label></td>
				<td><input type="text" id="description" name="description"
					placeholder="Description" required /></td>
			</tr>



			<tr>
				<td><label>Price</label></td>
				<td><input type="number" id="price" name="price"
					placeholder="0.00" required></td>
				<td><label>Quantity</label></td>
				<td><input placeholder="0" type="number" id="quantity"
					name="quantity" required></td>
			</tr>



		</table>
		<br>
		<button type="submit" class="btn btn-primary">Submit</button>
		<a href="/admin" class="btn btn-link">Cancel</a>

</form>
	</div>
</body>
</html>
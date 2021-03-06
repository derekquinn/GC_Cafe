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
		<h1 class="display-4">Encapsulation Edit Bay</h1>

		<hr class="my-4">
		<h1>${ title }</h1>

		<p class="lead">
			<b>Edit a product's information and press update to save.</b>
		</p>
		<!-- A form without an action submits back to the same URL, which is what we want here. -->
		<form method="post">
			<!-- We need to keep the ID and submit it with the form, but we don't want the user to have to see it. -->
			<input type="hidden" name="id" value="${item.id}" />

			<div class="form-group">
				<label for="name">Product Name</label>
				<!-- pre-populate the input value from the existing food (if any) -->
				<input class="form-control" id="name" name="name"
					value="${item.name}" required minlength="2" autocomplete="off">
			</div>
			<div class="form-group">
				<label for="description">Description</label> <input
					class="form-control" id="description" name="description"
					value="${item.description}" required>
			</div>
			<div class="form-group">
				<label for="quantity">Quantity</label> <input
					class="form-control" id="quantity" name="quantity"
					value="${item.quantity}" required minlength="1">
			</div>
			<div class="form-group">
				<label for="price">Price</label> <input class="form-control"
					id="price" name="price" value="${item.price}" required
					minlength="1">
			</div>
			<button type="submit" class="btn btn-primary">Submit</button>
			<a href="/admin" class="btn btn-link">Cancel</a>
		</form>


	</div>
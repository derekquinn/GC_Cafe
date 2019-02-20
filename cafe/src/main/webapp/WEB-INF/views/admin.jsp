<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- BOOTSTRAP STYLE SHEET -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<title>Product Manager</title>
</head>
<body>

<div class="jumbotron">
  <h1 class="display-4">Encapsulation Employees Only</h1>
  <p class="lead"><i>Use this page to edit the current product offerings.</i></p>
  <hr class="my-4">
 
	<h1>Product Management Console</h1>
		<table class="table">
		
			<thead>
				<tr>
					<th>Name</th><th>Description</th><th>Price</th><th>Quantity Available</th>
				</tr>
			</thead>
	
				<c:forEach var="items" items="${ items }">
				<tr>
					<td>${ items.name}</td>
					<td>${ items.description }</td>
					<td>$ ${ items.price }</td>
					<td>${ items.quantity }</td>
				</tr>
				</c:forEach>
		
		</table>
</div>

</body>
</html>
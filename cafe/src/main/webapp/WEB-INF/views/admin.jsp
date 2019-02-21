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
  <h1 class="display-4">Inventory Administration</h1>
 
  <hr class="my-4">
 

	 <p class="lead"><b>Click a product name below to edit or delete it.</b></p>
		<table class="table">
		
			<thead>
				<tr>
					<th>Name</th><th>Description</th><th>Price</th><th>Quantity Available</th>
				</tr>
			</thead>
	
				<c:forEach var="items" items="${ items }">
				<tr>
				<td><a href="/edit${id}">${ items.name}</a></td>
					<td>${ items.description }</td>
					<td>$ ${ items.price }</td>
					<td>${ items.quantity }</td>
				</tr>
				</c:forEach>
		
		</table>
		
	<a href="/add-item" class="btn btn-info" role="button">Add Item</a>
</div>

<div class="card" style="width: 18rem;">
  <div class="card-body">
    <h5 class="card-title">Back Home</h5>
    <h6 class="card-subtitle mb-2 text-muted">Done being a boss?</h6>
    <p class="card-text">Click below to return home.</p>
    <a href="/" class="card-link">Home</a>
  </div>
</div>
</body>
</html>
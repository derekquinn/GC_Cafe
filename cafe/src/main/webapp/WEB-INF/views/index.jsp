<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<!-- BOOTSTRAP STYLE SHEET -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>A Cafe Called Encapsulation</title>
</head>
<body>

	<center><h2> <i>A CAFE CALLED ENCAPSULATION </i></h2>
	<b>Established 2019</b></center>
	
<div class="bd-example">
  <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
      <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
      <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="/images/coffee_shop_s.jpg" class="d-block w-100" alt="Get Encapsulated">
        <div class="carousel-caption d-md-block">          <a href="/user-registration"><h5>Now Accepting Member Applications</h5> 
          <p>Apply today and join our member Connoisseurs from around the world.</p></a>
          
        </div>
      </div>
      <div class="carousel-item">
        <img src="/images/coffee_shop3_s.jpg" class="d-block w-100" alt="POJO">
        <div class="carousel-caption d-md-block">
        <h5> getEncapsulated()</h5>
          <p>Every Java Bean includes complimentary Getters, Setters and Constructors.</p>
        </div>
      </div>
      <div class="carousel-item">
        <img src="/images/coffee_shop2_s.jpg" class="d-block w-100" alt="Register Now">
        <div class="carousel-caption d-md-block">
         <a href="/user-registration"> <h5>Now Accepting Member Applications</h5>
          <p>Apply today and join our member Connoisseurs from around the world.</p> </a>
        </div>
      </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
<br>

<div class="jumbotron">
  <h1 class="display-4">Hello, friend!</h1>
  <p class="lead">A Cafe Called Encapsulation is a coffee shop where construction workers GET coffee and SET it down.</p>
  <hr class="my-4">
  <p>You can join this elite club of computer programmers, construction workers and well regarded citizens by filling out our application below. </p>
  <a class="btn btn-primary btn-lg" href="/user-registration" role="button">Apply Now</a>
</div>

<div class="jumbotron">
  <h1 class="display-4">Store Open!</h1>
  <p class="lead">Our menu is now open to the public!</p>
  <hr class="my-4">
 
	<h1>Product Offerings</h1>
		<table class="table">
			<thead>
				<tr>
					<th>Name</th><th>Description</th><th>Price</th><th>Quantity</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="items" items="${item}">
				<tr>
					<td>${item.name}</td>
					<td>${item.description}</td>
					<td>${item.price }</td>
					<td>${item.quantity }</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
</div>
<center>


<!-- BOOTSTRAP -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


</body>
<footer>
<br>
<i>Cafe Called Encapsulation is A Proud Member of Encapsulation Nation Federation</i></center>
</footer>
</html>
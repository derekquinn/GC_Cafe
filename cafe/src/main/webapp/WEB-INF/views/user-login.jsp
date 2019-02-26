<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login to Encapsulation</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet" href="/theme.css" />
</head>
<!-- Note: theme comes directly from the session. -->
<body>
	<h1>Login</h1>

	<p class="message">${ message }</p>
  <div class="form-group">
	<form action="/user-login" method="post">
		<p>
			<label for="username">Email:</label> <input class="form-control" id="email"
				name="email" value="${ param.email }" />
		</p>
		<p>
			<label for="password">Password:</label> <input class="form-control" id="password"
				type="password" name="password" />
		</p>
		<p>
			<button>Submit</button>
		</p>
	</form>
	</div>
</body>
</html>
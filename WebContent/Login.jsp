<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Login Page</title>
	<link rel="stylesheet" href="login.css">
	<link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<div id="wrapper">
		<div id="table">
			<a class="active" href="Login.jsp">Log in</a>
			<a class="passive" href="Signup.jsp">Sign Up</a>
		</div>
		<div id="signin">
			<form action="login" method="get">
				<div class="form-group">
					<label for="username">Username</label>
					<input type="text" name="uname" required autofocus>
				</div>
				<div class="form-group">
					<label for="pass">Password</label>
					<input type="password" name="pass" required>
					<span id="showpwd" class="fa fa-eye-slash"></span>
				</div>
				<div class="form-group">
					<label id="checkbox">
						<input type="checkbox" checked><span class="text">Keep me signed in </span>
					</label>
				</div>
				<div class="form-group">
					<input type="submit" value="Sign in">
				</div>
			</form>
		
		
	</div>
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script >
  $(document).ready(function () {
	$("#showpwd").on("click", function () {
		$(this).toggleClass("fa-eye fa-eye-slash");
		$($(this).siblings()[1]).attr("type", function (index, attr) {
			return attr == "password" ? "text" : "password"
		});
	});
})

  </script>
</body>
</html>
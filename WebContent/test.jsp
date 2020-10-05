 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<%@ page import="com.hotel.Dbconnection" %>    
  

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Sign-up Page</title>
	<link rel="stylesheet" href="login.css">
	<link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>


<% Connection con=Dbconnection.getConnection();
String username=request.getParameter("uname");
int contact=Integer.parseInt(request.getParameter("contact"));
String email=request.getParameter("email");
String password=request.getParameter("pass");
request.setAttribute("user",username);
PreparedStatement ps=con.prepareStatement("insert into userdetails (uname,email,password,contact) values (?,?,?,?)");
ps.setString(1, username);
ps.setString(2, email);
ps.setString(3, password);
ps.setInt(4, contact);
int i=ps.executeUpdate();
if(i>0)
{
	request.getRequestDispatcher("home.jsp").forward(request, response);
}
else
{
	response.sendRedirect("error.jsp");
}%>
<div id="wrapper">
		<div id="table">
			<a class="active" href="Login.jsp">Log in</a>
			<a class="passive" href="Signup.jsp">Sign Up</a>
		</div>
		<div id="sign">
			<form action="test.jsp" method="get">
			<div class="form-group">
					<label for="email">email</label>
					<input type="text" name="email" required autofocus pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$">
				</div>
				<div class="form-group">
					<label for="username">Username</label>
					<input type="text" name="uname" autofocus required pattern=".{3,}" title="Username should be atleast 3 character long">
				</div>
				
				<div class="form-group">
					<label for="contact">Contact</label>
					<input type="text" name="contact" autofocus required maxlength="10"  pattern="[0-9]{10}" title="Enter your mobile number" >
				</div>
				
				<div class="form-group">
					<label for="pass">Password</label>
					<input type="password" name="pass" required pattern=".{6,}" title="Password must be atleast 6 character long">
					<span id="showpwd" class="fa fa-eye-slash"></span>
				</div>
				
				<div class="form-group">
					<input type="submit" value="Sign up">
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
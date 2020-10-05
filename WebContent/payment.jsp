<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html>
<html>
<head>
	<title>Payment Detail</title>
	<link rel="stylesheet" type="text/css" href="payment.css">
</head>
<body>

	
<nav class="main-nav">
            <ul>
                <li><a href="home.jsp">Home</a></li>
                <li><a href="about.jsp">About</a></li>
                <li><a href="room.jsp">Rooms</a></li>
				<li><a href="booking">My Booking</a></li>
				<li><a href="logout.jsp">Log Out</a></li>
            </ul>
        </nav>
<div class="container">
<form action="" method="post">
	<p id="paydetail">Rs.<%=session.getAttribute("price") %></p>
	
	
 
	<input type="submit" name="cashbtn" id="btncash" value="CASH">
</form>

	<select id="cardselect" value="Card" onclick="window.location.href = 'card.jsp';">
    	<option value="Debit">Debit</option>
    	<option value="Credit">Credit</option>
   	</select>

</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Card Payment</title>
	<link rel="stylesheet" type="text/css" href="card.css">
	
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
	<form action="payment" method="get">
		<p>Card Number</p>
		<div class="txtbox">
			<input type="text" name="cardno" maxlength="16"  pattern="[0-9]{16}" required>
	    </div>
		<p>MM/YY</p>
		<div class="txtbox">
			<input type="date" name="mmyy" required pattern="[0-9]">
	    </div>
		<p>CVV</p>
		<div class="txtbox">
			<input type="text" name="cvv" required  maxlength="3" pattern="[0-9]{3}">
		</div>
		<p>Name on card</p>
		<div class="txtbox">
			<input type="text" name="cardname" required>
		</div>
		<p><input type="submit" value="Make Payment" id="paymentbtn"></p>
	</form>
</div>
</body>
</html>
</html>
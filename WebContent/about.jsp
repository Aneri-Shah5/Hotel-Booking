
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!--Made by Fauxy, Subscribe to my YouTube channel  U CAN CODE-->
<!--Please don't forget to subscribe my Youtube Channel-->
<!DOCTYPE html>
<html>
<head>
	<style>
	body{
	margin: 0;
	padding: 0;
}
.container{
	width:100%;
	height:auto;
	display: flex;
	align-items: flex-start;
	flex-wrap: wrap;
}
.about{
	width:100%;
	height: 600px;
	
	background-size: cover;
	background-position: center;
	background-repeat: no-repeat;
	display: flex;
	align-items: center;
	justify-content: center;
	flex-wrap: wrap;
}
.text{
	font-size: 30px;
	color:#67c2f0;
	font-family: sans-serif;
	text-shadow: 0px 15px 12px #000;
}
.line{
	width:200px;
	height: 8px;
	background-color: #67c2f0;
	display: block;
	position: relative;
	border-radius: 5px;
	left:10%;
	box-shadow: 0px 15px 12px 0px #000;
}
.content{
display: block;
	width:1200px;
	height:500px;
	margin-left: 75px;
	background:url("photo/ni.jpg")
	background-color:#67c2f0;
	font-size: 23px;
	font-family: audiowide;
	color:#333;
	line-height: 30px;
	text-align: center;
}
b{
	font-size: 50px;
	color:#00040a;
	font-weight: 500px;
}
img
  {
   
   display: block;
  margin-left: 75px;
  width: 1200px;
  height: 500px;
  
  
  }
  .main-nav ul, .footer-nav ul{
    list-style-type: none;  
}

nav ul li{
    float: left;
}

.main-nav ul li a{
    font-size: 18px;
    color: #267594;
    margin: 0 10px;
}

  
  .main-header{
    grid-area: main-header;
    padding: 12px 12%;
    display: flex;
    align-items: flex-end;
    justify-content: space-between;
}
</style>
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
   
  <img src="photo/nigh.jpg" ><br>
	<div class="container">
		
		<div class="content">
			<p><b>I</b>n a striking modern building in the central business district, this upscale hotel is 4 km from shops and restaurants in Ishanya Mall and 5 km from Aga Khan Palace.
Sleek rooms have refined colour schemes and city views, as well as Wi-Fi access, flat-screen TVs, espresso machines and minibars. Upgraded rooms include sitting areas, while suites offer separate living rooms and wet bars. Some provide access to a lounge with freebies such as breakfast and cocktails. Room service is available.

Amenities include 3 stylish restaurants, 2 bars and a coffee shop, plus an outdoor pool, a 24/7 gym, a chic spa, 13 meeting rooms and 12,000 sq ft. of total event space.
<br>
Check-in time: 12:00 PM<br>
Check-out time: 12:00 PM<br>
    <h3>  Address & contact information</h3><br>

                       
					   
					   
					          7 Mangaldas Rd,<br> Sangamvadi,<br>Panji Goa 411001

                                              020 6745 6745</p>
		</div>
		</div>
</body>
</html>
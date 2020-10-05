<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {box-sizing: border-box}
body {font-family: Verdana, sans-serif; margin:0}
.mySlides {display: none}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
    width: 90%;
  position: relative;
  margin: auto;
}
    .img{
    box-sizing: content-box;
}

    
/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  padding: 16px;
  margin-top: -22px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
  user-select: none;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}


/* The dots/bullets/indicators */
.dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active, .dot:hover {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .prev, .next,.text {font-size: 11px}
}
</style>
    
    <style>
label{display:inline-block;width:100px;margin-bottom:10px;}
     body  {
    background-image: url("");
    background-color: white;
}

.main-nav ul, .footer-nav ul{
    list-style-type: none;  
}
.main-nav ul li a{
    font-size: 18px;
    color: #267594;
    margin: 0 10px;
}
nav ul li{
    float: left;
}
.main-nav{
        margin-top: 10px;
    }  
label:hover {cursor:hand;}
</style>
  <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script>
            $(function () {
                $("#checkin").datepicker();
              

            });
           
        </script>
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
        </nav><br>
<div class="slideshow-container">

<div class="mySlides fade">
  <img src="photo/h1.jpg" style="width:100%; height: 50%">
  <div class="text"></div>
</div>

<div class="mySlides fade">
  <img src="photo/h4.jpg" style="width:100%; height: 50%">
  <div class="text"></div>
</div>

<div class="mySlides fade">
  <img src="photo/b.jpg" style="width:100%; height: 50%">
  <div class="text"></div>
</div>
    
    <div class="mySlides fade">
  <img src="photo/balcony.jpg" style="width:100%; height: 50%">
  <div class="text"></div>
</div>

<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
<a class="next" onclick="plusSlides(1)">&#10095;</a>

</div>
<br>

<div style="text-align:center">
  <span class="dot" onclick="currentSlide(1)"></span> 
  <span class="dot" onclick="currentSlide(2)"></span> 
  <span class="dot" onclick="currentSlide(3)"></span> 
      <span class="dot" onclick="currentSlide(4)"></span> 

</div>
    <form method="get" action="room" align="center" >
   CheckIn &nbsp;&nbsp;<input type="text" name="checkin" id="checkin"required>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   
    No of Days &nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="days"  required>
    <br>
        <br>
    
    No of People <input type="text" name="people"  pattern="[0-9]{1}" title="Enter only digits" required>&nbsp;&nbsp;&nbsp;&nbsp;
   
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  No of Rooms <input type="text" name="room" pattern="[0-9]{1}" title="Enter correct format" required>
   
    
       <br><br>
    
    
    
   

<h5>Rs 1500/day</h5>
 
<input type="submit" value="Book Now">
</form>
 

    
    
<script>
var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
}
</script>

</body>
</html> 

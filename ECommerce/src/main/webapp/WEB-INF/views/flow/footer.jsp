<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<html lang="en">

  <head>
    <meta charset="utf-8">
    
    <title>myClub | Home</title>
    <meta name="description" content="This one page example has a fixed navbar and full page height sections. Each section is vertically centered on larger screens, and then stack responsively on smaller screens. Scrollspy is used to activate the current menu item. This layout also has a contact form example. Uses animate.css, FontAwesome, Google Fonts (Lato and Bitter) and Bootstrap." />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="generator" content="Codeply">
	<c:url value="/resources/images" var="y"/>
	<c:url value="/resources/bootstrap/css1" var="a"/>


    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" />
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" />
    <link href="//cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.1/animate.min.css" rel="stylesheet" />

   
    <link rel="stylesheet" href="${a}/footer-distributed-with-address-and-phones.css" />
    <link rel="stylesheet" href="${a}/style.css"/>
  </head>
  
  <body>
  
  
  <footer class="footer-distributed" id="footer">

			<div class="footer-left">

			<img class=" img-responsive" style="width:200px;height:150px; margin-left:20px" src="${y}/myclub-logo1.png" alt="myClub logo">
				<br>
				<br>
				<p class="nav">
					<a style="color:#f44d3c" href="index">Home</a>
					·
					<a style="color:#f44d3c" href="#">Shop</a>
					·
					<a style="color:#f44d3c" href="About Us">About</a>
					·
					<a style="color:#f44d3c" href="Contact Us">Contact</a>
				</p>
				<br>
				<p class="footer-company-name">myClub.com &copy; 2017 | All Rights Reserved.</p>
			</div>

			<div class="footer-center">

				<div>
					<i class="fa fa-map-marker"></i>
					<p><span> New Delhi</p> , <p style="color:#f44d3c">India</p>
				</div>

				<div>
					<i class="fa fa-phone"></i>
					<p>+1 999 123456</p>
				</div>

				<div>
					<i class="fa fa-envelope"></i>
					<p><a style="color:#f44d3c" href="mailto:support@muClub.com">support@myClub.com</a></p>
				</div>

			</div>

			<div class="footer-right">

				<p class="footer-company-about">
					<span style="color:#f44d3c">About the company</span>
					myClub is a one stop shop for all your sports clubs merchandise needs. Brand is making a conscious effort to bring the power of sports to shoppers with an array of the latest clubs merchandise available in the country.
				</p>

				<div class="footer-icons">

					<a href="#"><i class="fa fa-facebook"></i></a>
					<a href="#"><i class="fa fa-twitter"></i></a>
					<a href="#"><i class="fa fa-linkedin"></i></a>
					<a href="#"><i class="fa fa-github"></i></a>

				</div>

			</div>

		</footer>
  
  </body>
  </html>
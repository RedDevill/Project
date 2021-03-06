<!DOCTYPE html>
<html lang="en">
<%@page isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<!--    *****************************   HEAD    ***************************  -->

<head>
  <title>View Supplier</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
  
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-social/4.10.1/bootstrap-social.css" rel="stylesheet" >
    
    <link rel="stylesheet" href="resources/bootstrap/css1/styles.css" />
     <link rel="stylesheet" href="resources/bootstrap/css1/footer-distributed-with-address-and-phones.css" />

<style type="text/css">
html,body {
	height:100%;
    background:center no-repeat fixed url('');
    background-size: cover;
    color:#444;
    font-family: 'Lato', sans-serif;
}
section {
	padding-top:70px;  
    padding-bottom:50px;
    min-height:70%;
    min-height:calc(100% - 0);
    -webkit-transform-style: preserve-3d;
    -moz-transform-style: preserve-3d;
    transform-style: preserve-3d;
}
</style>
</head>



	<!--   ***************************    Nav Bar   *******************************-->
	
	
	
<body>
 <jsp:include page="header1.jsp"></jsp:include>
<!-- <nav class="navbar navbar-trans navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapsible">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand text-danger" href="#"><img src="resources/images/myclub-logo2.png" alt="myClub"></a>
        </div>
        <div class="navbar-collapse collapse" id="navbar-collapsible">
            <ul class="nav navbar-nav navbar-left">
                <li><a href="index">Home</a></li>
                <li><a href="ViewUsers">Users</a></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Category <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="AddCategory">Add Category</a></li>
							<li><a href="ViewCategory">View Category</a></li>
						</ul></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Product <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="AddProduct">Add Product</a></li>
							<li><a href="ViewProduct">View Product</a></li>
						</ul></li>
					<li class="dropdown active"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Supplier <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="AddSupplier">Add Supplier</a></li>
							<li><a href="ViewSupplier">View Supplier</a></li>
						</ul></li>
					<li>&nbsp;</li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<form class="navbar-form navbar-left" role="search">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Search">
						</div>
						<button type="submit" class="btn btn-danger btn-default">Submit</button>
					</form>
					<li><a href="#" data-toggle="modal" data-target="#myModal"><i
							style="color: #1abc9c" class="fa fa-sign-in fa-lg"></i></a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div id="myModal" class="modal fade" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">�</button>
					<h2 class="text-center">
						<img style="width: 100px; height: 100px"
							src="resources/images/user.png" class="img-circle"><br>Login
					</h2>
				</div>
				<div class="modal-body row">
					<br>
					<form role="form" method="post" action="login"
						accept-charset="UTF-8"
						class=" form col-md-10 col-md-offset-1 col-xs-12 col-xs-offset-0">
						<div class="form-group">
							<input type="text" class="form-control input-lg" name="username"
								placeholder="Username / Email">
						</div>
						<div class="form-group">
							<input type="password" class="form-control input-lg"
								name="password" placeholder="Password">
						</div>
						<div class="form-group">
							<button class="btn btn-danger btn-lg btn-block">Sign In</button>
							<br>
							<span><a href="#">Forget password ?</a></span><br> <br>
							<a href="Signup" class="btn btn-hero btn-lg btn-block">Register
								Now</a>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<h6 class="text-center">
						<a href="">Privacy is important to us. Click here to read why.</a>
					</h6>
				</div>
			</div>
		</div>
	</div>

	<script
		src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<script
		src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

	<script src="js/scripts.js"></script>
 -->
<br>
<div class="container">
 <div style="margin-left:0px; margin-top:100px;">
<h1 style="color: #f44d3c"><dt>Supplier</dt></h1>
</div>
<br>
<br>
  <table class="table table-hover">
    <thead>
      <tr>
        <th>Supplier ID</th>
        <th>Supplier Name</th>
        <th>Supplier Description</th>
        <th>Edit</th>
        <th>Delete</th>
      </tr>
    </thead>
    <c:forEach var="x" items="${listSupplier}">
    <tbody>
      <tr>
        <td>${x.supplierID}</td>
        <td>${x.supplierName}</td>
        <td>${x.supplierDescription}</td>
        <td><a href="EditSupplier/${x.supplierID}">Edit</a></td>
        <td><a href="deletesupplier/${x.supplierID}">Delete</a></td>
      </tr>
      </tbody>
      </c:forEach>
  </table>
</div>

<br>
<br>
<footer class="footer-distributed" id="footer">

			<div class="footer-left">

			<img class=" img-responsive" style="width:200px;height:150px; margin-left:20px" src="resources/images/myclub-logo1.png" alt="myClub logo">
				<br>
				<br>
				<p class="nav">
					<a href="index">Home</a>
					�
					<a href="#">Shop</a>
					�
					<a href="About Us">About</a>
					�
					<a href="Contact Us">Contact</a>
				</p>
				<br>
				<p class="footer-company-name">myClub.com &copy; 2016 | All Rights Reserved.</p>
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
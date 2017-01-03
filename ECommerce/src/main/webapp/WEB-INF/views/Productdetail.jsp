<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<html lang="en">
  <head>
    
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Product Detail</title>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <c:url value="/resources/images" var="y"/>
	<c:url value="/resources/bootstrap/css1" var="a"/>
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700" rel="stylesheet">
	<!-- <link rel="stylesheet" href="resources/bootstrap/css1/style.css" />
	 --><link rel="stylesheet" href="${a}/header.css">
	<link rel="stylesheet" href="${a}/product.css" />
	<link rel="stylesheet" href="${a}/footer-distributed-with-address-and-phones.css" />

   
  </head>

  <body>

<nav class="navbar navbar-trans navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapsible">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand text-danger" href="#"><img src="${y}/myclub-logo2.png" alt="myClub"></a>
        </div>
        <div class="navbar-collapse collapse" id="navbar-collapsible">
            <ul class="nav navbar-nav navbar-left">
                <li><a href="index">Home</a></li>
                <li class="active"><a href="#section2">Shop</a></li>
                <li><a href="About Us">About Us</a></li>
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
						aria-hidden="true">×</button>
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
<br>
<br>
<br>
<br>	
	<div class="container">
		<div class="card">
			<div class="container-fliud">
				<div class="wrapper row">
					<div class="preview col-md-6">
						
						<div class="preview-pic tab-content">
						  <div class="tab-pane active" id="pic-1"><img src="${y}/${productdetail.productID}.jpg" alt="image"/></div>
						<!--   <div class="tab-pane" id="pic-2"><img src="http://placekitten.com/400/252" /></div>
						 <div class="tab-pane" id="pic-3"><img src="http://placekitten.com/400/252" /></div>
						  <div class="tab-pane" id="pic-4"><img src="http://placekitten.com/400/252" /></div>
						  <div class="tab-pane" id="pic-5"><img src="http://placekitten.com/400/252" /></div>
						 --></div>
							  <!--<ul class="preview-thumbnail nav nav-tabs">
						  <li class="active"><a data-target="#pic-1" data-toggle="tab"><img src="http://placekitten.com/200/126" /></a></li>
						  <li><a data-target="#pic-2" data-toggle="tab"><img src="http://placekitten.com/200/126" /></a></li>
					 <li><a data-target="#pic-3" data-toggle="tab"><img src="http://placekitten.com/200/126" /></a></li>
						  <li><a data-target="#pic-4" data-toggle="tab"><img src="http://placekitten.com/200/126" /></a></li>
						  <li><a data-target="#pic-5" data-toggle="tab"><img src="http://placekitten.com/200/126" /></a></li>
						</ul> -->
						
					</div>
					<div class="details col-md-6" >
						<h3 class="product-title">${productdetail.productName}</h3>
						<div class="rating">
							<div class="stars">
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star"></span>
								<span class="fa fa-star"></span>
							</div>
							<span class="review-no">41 reviews</span>
						</div>
						<p class="product-description">${productdetail.productDescription}</p>
						<h4 class="price">current price: <span>${productdetail.price}</span></h4>
						<p class="vote"><strong>91%</strong> of buyers enjoyed this product! <strong>(87 votes)</strong></p>
						<h5 class="sizes">sizes:
							<span class="size" data-toggle="tooltip" title="small">s</span>
							<span class="size" data-toggle="tooltip" title="medium">m</span>
							<span class="size" data-toggle="tooltip" title="large">l</span>
							<span class="size" data-toggle="tooltip" title="xtra large">xl</span>
						</h5>
						<h5 class="colors">colors:
							<span class="color orange not-available" data-toggle="tooltip" title="Not In store"></span>
							<span class="color green"></span>
							<span class="color blue"></span>
						</h5>
						
						<a href="/Ecommerce/addtocart">ADDTOCART</a>
						
						<!-- <a href="Cart" class="add-to-cart btn btn-default">add to cart</a> -->
						<div class="action">
						
							<a href="/ECommerce/Cart/${productdetail.productID}" class="add-to-cart btn btn-default">add to cart</a>
							<button class="like btn btn-default" type="button"><span class="fa fa-heart"></span></button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<jsp:include page="footer.jsp"></jsp:include>
  </body>
</html>

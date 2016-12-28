<!DOCTYPE html>
<%@page isELIgnored="false" %>
<html lang="en">
<head>
  <title>Product</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <!--  <script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.4.0/angular.min.js"></script> -->
  <!--  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script> -->

  <link rel="stylesheet" href="resources/bootstrap/css1/header.css">
<link rel="stylesheet" href="resources/bootstrap/css1/style.css" />
    <script>
  angular.module('myApp', [])
  .controller('productCtrl', function($scope,$http) {
     $scope.list=${list};
  });
  </script>
 <!--  <style>
  html,body {
		height:100%;
	    background:center no-repeat fixed url("http://cdn.wonderfulengineering.com/wp-content/uploads/2014/09/white-wallpapers-1.jpg");
	    color:#444;
	    font-family: 'Lato', sans-serif;
	}
  </style> -->
</head>


<body  ng-app="myApp" ng-controller="productCtrl" >

<nav class="navbar navbar-trans navbar-fixed-top" role="navigation">
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

<div class="container">
  <h2>MEN's Section</h2>
  <br>
  <h3>Categories</h3>            
  <table class="table table-striped" ng-controller="productCtrl" >
    <thead>
      <tr>
        <th>Product ID</th>
        <th>Product Name</th>
        <th>Product Description</th>
        <th>Quantity</th>
        <th>Brand</th>
        <th>Price</th>
      </tr>
    </thead>
    <tbody>
     <tr ng-repeat="x in list">
    <td>{{x.productID}}</td>
    <td>{{x.productName}}</td>
    <td>{{x.productDescription}}</td>
    <td>{{x.quantity}}</td>
    <td>{{x.brand}}</td>
    <td>{{x.price}}</td>
    <td><a href="Productdetail/{{x.productID}}"><i style="color:#1abc9c" class="fa fa-exclamation" aria-hidden="true"></i></a></td>
 
     </tr>
      
    </tbody>
  </table>
</div>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>

<!DOCTYPE html>
<html lang="en">
<%@page isELIgnored="false" %>

	<!--    *****************************   HEAD    ***************************  -->

<head>
  <title>myClub | Admin</title>
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
    <link rel="stylesheet" href="resources/bootstrap/css/style.css">
    <link rel="stylesheet" href="resources/bootstrap/css/image.css"> 
</head>



	<!--   ***************************    Nav Bar   *******************************-->
	
	
	
<body>
<div>
 <nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
       <!-- <img src="resources/images/logo.jpg" alt="myClub"> -->
       <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar1">
          <!-- span class="sr-only">Toggle navigation</span-->
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
         <a class="navbar-brand" href="index"> <img src="resources/images/logo.jpg" alt="myClub"></a>
        </div>
        
       <div id="navbar1" class="navbar-collapse collapse">
    <ul class="nav navbar-nav">
      <li><a href="index">HOME</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">CATEGORY <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="AddCategory">Add Category</a></li>
          <li><a href="ViewCategory">View Category</a></li>
        </ul>
      </li>
     <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">PRODUCT <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="AddProduct">Add Product</a></li>
          <li><a href="ViewProduct">View Product</a></li>
        </ul>
      </li><li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">SUPPLIER <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="AddSupplier">Add Supplier</a></li>
          <li><a href="ViewSupplier">View Supplier</a></li>
        </ul>
      </li>
    
    </ul>
      <ul class="nav navbar-nav navbar-right">
      <li><a href="index"><span class="glyphicon glyphicon-user"></span> LOG OUT</a></li>
      </ul>
</div>
  </div>
</nav> 
</div>
<br>
<div class="container">
 <div style="margin-left:0px; margin-top:100px;">
<h1 style="color: #292c2f"><dt>Product</dt></h1>
</div>
<br>
<br>
  <table class="table table-hover">
    <thead>
      <tr>
        <th>Product ID</th>
        <th>Product Name</th>
        <th>Product Description</th>
        <th>Quantity</th>
        <th>Brand</th>
        <th>Price</th>
        <th>Supplier</th>
        <th>Category</th>
        <th>Edit</th>
        <th>Delete</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>${product.productID}</td>
        <td>${product.productName}</td>
        <td>${product.productDescription}</td>
        <td>${product.quantity}</td>
        <td>${product.brand}</td>
        <td>${product.price}</td>
        <td>${product.supplier}</td>
        <td>${product.category}</td>
        <td><a href="#">Edit</a></td>
        <td><a href="#">Delete</a></td>
      </tr>
          </tbody>
  </table>
</div>

<br>
<br>
<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>
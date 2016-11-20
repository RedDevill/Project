<!DOCTYPE html>
<html lang="en">

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
          <li><a href="#">Add Category</a></li>
          <li><a href="#">View Category</a></li>
        </ul>
      </li>
     <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">PRODUCT <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Add Product</a></li>
          <li><a href="#">View Product</a></li>
        </ul>
      </li><li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">SUPPLIER <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Add Supplier</a></li>
          <li><a href="#">View Supplier</a></li>
        </ul>
      </li>
    
    </ul>
      <ul class="nav navbar-nav navbar-right">
      <li><a href="#"><span class="glyphicon glyphicon-user"></span> LOG OUT</a></li>
      </ul>
</div>
  </div>
</nav> 
</div>
<br>
<div style="margin-left:200px; margin-top:100px;">
<h1 style="color: #292c2f"><dt>Hello!! Admin </dt></h1>
</div>

<br>
<br>
<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>
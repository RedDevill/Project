<!DOCTYPE html>
<html lang="en">

	<!--    *****************************   HEAD    ***************************  -->

<head>
  <title>Add Product</title>
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
    <link rel="stylesheet" href="resources/bootstrap/css/Signup.css">
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
          <li><a href="#">View Category</a></li>
        </ul>
      </li>
     <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">PRODUCT <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="AddProduct">Add Product</a></li>
          <li><a href="#">View Product</a></li>
        </ul>
      </li><li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">SUPPLIER <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="AddSupplier">Add Supplier</a></li>
          <li><a href="#">View Supplier</a></li>
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
<br>
<div class="container"style="margin-top:70px;">
    <div class="row">
        <div class="col-xs-12 col-sm-10 col-md-6 well well-sm">
            <legend><a href="http://www.jquery2dotnet.com"><i class="glyphicon glyphicon-th-list"></i></a> ADD Product Details</legend>
            <form action="submit1" method="post" class="form" role="form">
            <div class="row">
            <div class="form-group">
              <label class="col-md-5 control-label text-left" for="id">Product ID :</label>
              <div class="col-md-6">
                <input id="productID" name="productID" type="text" placeholder="Product ID" class="form-control">
              </div>
            </div>
            <div class="form-group">
              <label class="col-md-5 control-label text-left" for="id">Product Name :</label>
              <div class="col-md-6">
                <input id="productname" name="productName" type="text" placeholder="Product name" class="form-control">
              </div>
            </div>
            <div class="form-group">
              <label class="col-md-5 control-label text-left" for="id">Product Description :</label>
              <div class="col-md-6">
                <input id="productDescription" name="productDescription" type="text" placeholder="Product Description" class="form-control">
              </div>
            </div>
    		<div class="form-group">
              <label class="col-md-5 control-label text-left" for="id">Quantity :</label>
              <div class="col-md-6">
                <input id="quantity" name="quantity" type="text" placeholder="Product quantity" class="form-control">
              </div>
            </div>
    		<div class="form-group">
              <label class="col-md-5 control-label text-left" for="id">Brand :</label>
              <div class="col-md-6">
                <input id="brand" name="brand" type="text" placeholder="Product Brand" class="form-control">
              </div>
            </div>
            <div class="form-group">
              <label class="col-md-5 control-label text-left" for="id">Price :</label>
              <div class="col-md-6">
                <input id="price" name="price" type="text" placeholder="Price" class="form-control">
              </div>
            </div>
            <div class="form-group">
              <label class="col-md-5 control-label text-left" for="id">Supplier :</label>
              <div class="col-md-3">
                <!-- <input id="supplier" name="supplier" type="text" placeholder="Product ID" class="form-control"> -->
            		<select class="form-control">
                        <option value="Puma">Puma</option>
                        <option value="Adidas">Adidas</option>
                        <option value="Nike">Nike</option>
                    </select>
              </div>
            </div>
            <div class="form-group">
              <label class="col-md-5 control-label text-left" for="id">Category :</label>
              <div class="col-md-3">
                <!-- <input id="supplier" name="supplier" type="text" placeholder="Product ID" class="form-control"> -->
            		<select class="form-control">
                        <option value="Shirt">Shirt</option>
                        <option value="Shorts">Shorts</option>
                        <option value="Shoes">Shoes</option>
                    </select>
              </div>
            </div>
            <br />
            <br />
    		<div class="form-group">
              <div class="col-md-12 text-center">
                <button id="submit1" type="submit" class="btn btn-primary btn-lg ">ADD</button>
              </div>
            </div>
          </form>
        </div>
        
    </div>
    </div>
    </div>
<br>
<br>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
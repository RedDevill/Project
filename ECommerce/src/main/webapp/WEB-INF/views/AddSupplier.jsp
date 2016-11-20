<!DOCTYPE html>
<html lang="en">

	<!--    *****************************   HEAD    ***************************  -->

<head>
  <title>Add Supplier</title>
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
    <!-- <link rel="stylesheet" href="resources/bootstrap/css/style.css">
    <link rel="stylesheet" href="resources/bootstrap/css/image.css">  -->
</head>



	<!--   ***************************    Nav Bar   *******************************-->

<style>
.jumbotron {
    position: relative;
    background-image:url("resources/images/football4.jpg") center center;/*slide.jpg =>you image*/    
    width: 100%;
    height: 100%;
    background-size: cover;
    overflow: hidden;
}
</style>	
	
	
<body>
<div class="jumbotron">
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
<br>

<div class="container"style="margin-top:80px;">
	<div class="row">
      <div class="col-md-7">
        <div class="well well-sm">
          <form class="form-horizontal" action="" method="post">
          <fieldset>
            <legend class="text-center">Add Supplier</legend>
    
            <!-- ID input-->
            <div class="form-group">
              <label class="col-md-4 control-label text-left" for="id">Supplier ID :</label>
              <div class="col-md-8">
                <input id="id" name="id" type="text" placeholder="Supplier ID" class="form-control">
              </div>
            </div>
    
            <!-- Name input-->
            <div class="form-group">
              <label class="col-md-4 control-label" for="name">Supplier NAME :</label>
              <div class="col-md-8">
                <input id="name" name="name" type="text" placeholder="Supplier Name" class="form-control">
              </div>
            </div>
    
            <!-- Description body -->
            <div class="form-group">
              <label class="col-md-4 control-label" for="message">Supplier Description :</label>
              <div class="col-md-8">
                <textarea class="form-control" id="message" name="message" placeholder="Enter description here..." rows="5"></textarea>
              </div>
            </div>
    
            <!-- Form actions -->
            <div class="form-group">
              <div class="col-md-12 text-center">
                <button id="submit" type="submit" class="btn btn-primary btn-lg ">Submit</button>
              </div>
            </div>
          </fieldset>
          </form>
        </div>
      </div>
	</div>
</div>
<br>
<br>

<jsp:include page="footer.jsp"></jsp:include>
</div>
</body>

</html>
<!DOCTYPE html>
<html lang="en">

	<!--    *****************************   HEAD    ***************************  -->

<head>

  <title>Error</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
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
<jsp:include page="WEB-INF/views/header.jsp"></jsp:include>
<br>
<br>
<div style="margin-left:200px; margin-top:100px;";>
<h1 style="color: red"><dt>Error</dt></h1>
<h3 class="text-warning">please check your username n password and type correctly</h3>
</div>
<br>
<br>
<br>
<br>

	<!--  ***********************   TRending Clubs   **********************  -->

<div style="margin-top:200px">
  <h2 class="text-center"><dt>Trending Clubs</dt></h2><br>
  <br><div class="row">
    <div class="col-md-3"style="margin-left:200px;" >
      <a href="resources/images/ManUtd.jpg" title=" MAN UTD">
        
        <img src="resources/images/ManUtd.jpg" class="img-rounded center-block img-responsive"alt="MAN UTD " style="width:200px;height:200px">
        <br><h4 class="text-center">MAN UTD</h4>
      </a>
    </div>
    <div class="col-md-3">
      <a href="resources/images/realmadrid.jpg" title="Real Madrid">
        <p></p>
        <img src="resources/images/realmadrid.jpg" class="img-rounded center-block img-responsive " alt="Real Madrid" style="width:200px;height:200px">
        <br><h4 class="text-center">REAL MADRID</h4>
      </a>
    </div>
    <div class="col-md-3">
      <a href="resources/images/fcbarca.jpg" title=" FC Barcelona">
        <p></p>
        <img src="resources/images/fcbarca.jpg" class="img-rounded center-block img-responsive" alt="FC BARCELONA" style="width:200px;height:200px">
        <br> <h4 class="text-center">FC BARCELONA</h4>
      </a>
    </div>
  </div>
</div>
 <br> 
 
 
 
 		<!--    ***************************  Shop    myCLUB    ************************** -->
 

<br>
<div>
  <h2 class="text-center"><dt>Shop myClub</dt></h2><br>
  <br><div class="row">
    <div class="col-md-3"style="margin-left:200px;" >
      <a href="resources/images/mens.jpg" title=" MENs">
        
        <img src="resources/images/mens.jpg" class="img-circle center-block img-responsive"alt="MEN's" style="width:200px;height:200px">
        <br><h4 class="text-center">MEN</h4>
      </a>
    </div>
    <div class="col-md-3">
      <a href="resources/images/womens.jpg" title="WOMENs">
        <p></p>
        <img src="resources/images/womens.jpg" class="img-circle center-block img-responsive" alt="WOMEN's" style="width:200px;height:200px">
        <br> <h4 class="text-center">WOMEN</h4>
      </a>
    </div>
    <div class="col-md-3 clearfix ">
      <a href="resources/images/kids.jpg" title="KIds">
        <p></p>
        <img src="resources/images/kids.jpg" class="img-circle center-block img-responsive" alt="KIDs" style="width:200px;height:200px">
        <br> <h4 class="text-center">KIDS</h4>
      </a>
    </div>
  </div>
</div>



 	<!--   ***************************   Footer   ***************************** -->
 	
 	
<br><div>
  <jsp:include page="footer.jsp"/>
 </div>
    </body>
    </html>
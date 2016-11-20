<!DOCTYPE html>
<html lang="en">

	<!--    *****************************   HEAD    ***************************  -->

<head>
  <title>myClub</title>
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
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">SHOP <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">MEN's</a></li>
          <li><a href="#">WOMEN's</a></li>
          <li><a href="#">KIDS</a></li>
        </ul>
      </li>
      <li class="active"><a href="About Us">ABOUT US</a></li>
     </ul>
     <ul class="nav navbar-nav navbar-right">
      <form class="navbar-form navbar-left" role="search">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Search">
        </div>
        <button type="submit" class="btn btn-default">Submit</button>
      </form>
      <li class="dropdown">
          <a href="#" class="dropdown-toggle " data-toggle="dropdown"><span class="glyphicon glyphicon-log-in"></span> LOGIN</a>
			<ul id="login-dp" class="dropdown-menu">
				<li>
					 <div class="row">
							<div class="col-md-12">
								Login via
								<div class="social-buttons">
									<a href="#" class="btn btn-fb"><i class="fa fa-facebook"></i> Facebook</a>
									<a href="#" class="btn btn-tw"><i class="fa fa-twitter"></i> Twitter</a>
								</div>
                                or
								 <form class="form" role="form" method="post" action="login" accept-charset="UTF-8" id="login-nav">
										<div class="form-group">
											 <label class="sr-only" for="exampleInputEmail2">user name</label>
											 <input type="text" class="form-control" id="exampleInputEmail2" placeholder="UserName" name="username" required>
										</div>
										<div class="form-group">
											 <label class="sr-only" for="exampleInputPassword2">Password</label>
											 <input type="password" class="form-control" id="exampleInputPassword2" placeholder="Password" name="password" required>
                                             <div class="help-block text-right"><a href="">Forget the password ?</a></div>
										</div>
										<div class="form-group">
											 <button type="submit" class="btn btn-primary btn-block">Sign in</button>
										</div>
										<div class="checkbox">
											 <label>
											 <input type="checkbox"> keep me logged-in
											 </label>
										</div>
								 </form>
							</div>
							<div class="bottom text-center">
								New here ? <a href=Signup><b>Join Us</b></a>
							</div>
					 </div>
				</li>
			</ul>
        </li>
      </ul>
    </div>
  </div>
</nav> 
</div>
  <br>
  <br>
<div class="container">
<br>
<br>
<br>
  <br>
  
  <img class="img-responsive" style="width:200px;height:150px" src="resources/images/logo.jpg" alt="myClub logo">
  <br>
 
  <h4><u> INTRODUCTION </u></h4>
 
  <blockquote>
   <p>myClub is a one stop shop for all your sports clubs merchandise needs. Being e-commerce store for clubs merchandise, myClub aims at providing a hassle free and enjoyable shopping experience to shoppers across the country with the widest range of brands and products on its portal. The brand is making a conscious effort to bring the power of sports to shoppers with an array of the latest clubs merchandise available in the country.</p>
    
  </blockquote>
</div>	

 
 <br>
  <br>
 
 <div class="container">
  <h4><u>BRANDS</u></h4>
  <blockquote>
  <p>myClub understands its shoppers needs and caters to them with choice of jersey , accessories, footwear from over various leading sports and international brands. Prominent brands include Adidas, Nike, Puma, Umbro , Hubolt ,kappa to name a few. You can also shop from some replicas of top brands .</p> 
  </blockquote>
</div>
<br>
<br>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
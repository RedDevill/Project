<!DOCTYPE html>
<html lang="en">

	<!--    *****************************   HEAD    ***************************  -->

<head>
  <title>Contact US</title>
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


 <style>
 section {
 	margin-top:0px;
	padding-top:0px;  
    padding-bottom:40px;
    min-height:75%;
    min-height:calc(100% - 0);
    -webkit-transform-style: preserve-3d;
    -moz-transform-style: preserve-3d;
    transform-style: preserve-3d;
}
 
  </style>

</head>

<body>
<jsp:include page="header.jsp"></jsp:include>
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
                <li><a href="#section2">Shop</a></li>
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
                <li><a href="#" data-toggle="modal" data-target="#myModal"><i style="color:#1abc9c" class="fa fa-sign-in fa-lg"></i></a></li>
            </ul>
        </div>
    </div>
</nav> -->

<br>
<br>
<section id="section4">
    <div class="container v-center">
        <div class="row">
            <div class="col-md-12">
                <h1 class="text-center"> Contact US </h1>
                <hr>
            </div>
            <br>
            <br>
        </div>
        <div class="row">
            <div class="col-md-8 col-md-offset-1">
                <div class="row form-group">
                    <div class="col-sm-3">
                        <input type="text" class="form-control" id="firstName" name="firstName" placeholder="First Name" required="">
                    </div>
                    <div class="col-sm-3">
                        <input type="text" class="form-control" id="middleName" name="firstName" placeholder="Middle Name" required="">
                    </div>
                    <div class="col-sm-4">
                        <input type="text" class="form-control" id="lastName" name="lastName" placeholder="Last Name" required="">
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-sm-5">
                        <input type="email" class="form-control" name="email" placeholder="Email" required="">
                    </div>
                    <div class="col-sm-5">
                        <input type="email" class="form-control" name="phone" placeholder="Phone" required="">
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-sm-10">
                        <input type="text" class="form-control" placeholder="Description" required="">
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-sm-10">
                        <button class="btn btn-danger btn-lg pull-right">Post</button>
                    </div>
                </div>
            </div>
            <div class="col-md-3 pull-right">
                <address>
                  <strong>myClub</strong><br>
                  795 Folsom Ave, Suite 600<br>
                  New Delhi, India<br>
                  P: (123) 456-7890
                </address>
                <address>
              <strong>Email Us</strong><br>
              <a href="mailto:#" style="color:#f44d3c">support@myClub.com</a>
            </address>
            </div>
        </div>
    </div>
</section>
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



<div class="scroll-up">
    <a href="#"><i class="fa fa-angle-up"></i></a>
</div>

<div id="myModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">�</button>
                <h2 class="text-center"><img style="width:100px;height:100px" src="resources/images/user.png" class="img-circle"><br>Login</h2>
            </div>
            <div class="modal-body row"><br>
                <form role="form" method="post" action="login" accept-charset="UTF-8" class=" form col-md-10 col-md-offset-1 col-xs-12 col-xs-offset-0">
                    <div class="form-group">
                        <input type="text" class="form-control input-lg" name="username" placeholder="Username / Email" required>
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control input-lg" name="password" placeholder="Password" required>
                    </div>
                    <div class="form-group">
                        <button class="btn btn-danger btn-lg btn-block">Sign In</button>
                        <br><span><a href="#">Forget password ?</a></span><br>
                        <br>
                        <a href=Signup class="btn btn-hero btn-lg btn-block">Register Now</a>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <h6 class="text-center"><a href="">Privacy is important to us. Click here to read why.</a></h6>
            </div>
        </div>
    </div>
</div>
    <!--scripts loaded here-->
    
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    
    <script src="js/scripts.js"></script>
    
</body>
</html>
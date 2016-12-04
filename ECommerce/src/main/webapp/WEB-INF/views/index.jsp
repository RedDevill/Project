<!DOCTYPE html>
<html lang="en">

<html>
  <head>
    <meta charset="utf-8">
    
    <title>myClub | Home</title>
    <meta name="description" content="This one page example has a fixed navbar and full page height sections. Each section is vertically centered on larger screens, and then stack responsively on smaller screens. Scrollspy is used to activate the current menu item. This layout also has a contact form example. Uses animate.css, FontAwesome, Google Fonts (Lato and Bitter) and Bootstrap." />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="generator" content="Codeply">



    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" />
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" />
    <link href="//cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.1/animate.min.css" rel="stylesheet" />

    <link rel="stylesheet" href="resources/bootstrap/css1/styles.css" />
    <link rel="stylesheet" href="resources/bootstrap/css1/image.css" />
    <link rel="stylesheet" href="resources/bootstrap/css1/footer-distributed-with-address-and-phones.css" />
    
    
  </head>
  
  
  <body >
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
                <li><a href="#section1">Home</a></li>
                <li><a href="#section2">Shop</a></li>
                <li><a href="#section3">About Us</a></li>
                <li><a href="Admin">Admin</a></li>
                <!-- <li><a href="#section4"></a></li>
                <li><a href="#section5"></a></li>
                <li><a href="#section6"></a></li> -->
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
</nav>

<section class="container-fluid" id="section1">
   <!--  <div class="v-center">
        <h1 class="text-center">Just One Page</h1>
        <h2 class="text-center lato animate slideInDown">Change It To Say <b>Something</b> Unique</h2>
        <p class="text-center">
            <br>
            <a href="#" class="btn btn-danger btn-lg btn-huge lato" data-toggle="modal" data-target="#myModal">Get Free Membership</a>
        </p>
    </div> -->
  <div class="carousel fade-carousel slide" data-ride="carousel" data-interval="4000" id="bs-carousel">
  <!-- Overlay -->
  <div class="overlay"></div>

  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#bs-carousel" data-slide-to="0" class="active"></li>
    <li data-target="#bs-carousel" data-slide-to="1"></li>
    <li data-target="#bs-carousel" data-slide-to="2"></li>
    <li data-target="#bs-carousel" data-slide-to="3"></li>
     <li data-target="#bs-carousel" data-slide-to="4"></li>
  </ol>
  
  <!-- Wrapper for slides -->
   
  <div class="carousel-inner" role="listbox">
  	 <div class="item slides active">
      <div class="slide-1"></div>
      <div class="hero">
        <hgroup>
            <h1>Welcome to </h1>
            <br>        
            <h3>Your one stop for all your sports clubs needs</h3>
            <br>
        </hgroup>
        <a href="#" class="btn btn-hero btn-lg btn-huge " data-toggle="modal" data-target="#myModal">Get Started Now</a>
      </div>
    </div>
    
    <div class="item slides ">
    <img  style="width:1260px"; src="resources/images/football4.jpg">
      <div class="slide-2"></div>
      			<div class="banner-content content-left">
      			<br>
      			<br>
                  <h2 class="faster-headline headline" style="color: white; font-family: " primary-bold",arial,"helvetica="" neue",helvetica,sans-serif="" !important;"="">FOR</h2>
  				  <h3 class="faster-headline headline" style="color: white; font-family: " primary-bold" ,arial,"helvetica="" neue",helvetica,sans-serif="" !important;"=""><u ffcolor="gold">FOOTBALL</u></h3>
  				  <br>
                  <h4 class="subheadline sale-banner-font-set" style="color: white; text-transform: none !important; line-height: 24px !important; font-size: 40px; letter-spacing: 1px;">FANS</h4>
               <button class="btn btn-danger btn-lg btn-responsive" role="button">Shop Football kits</button>
               </div>
    </div>
    <div class="item slides ">
    <img src="resources/images/cricket3.jpg">
      <div class="slide-3"></div>
      <div class="banner-content content-right">
      			<br>
      			<br>
                  <h2 class="faster-headline headline" style="color: white; font-family: " primary-bold",arial,"helvetica="" neue",helvetica,sans-serif="" !important;"="">FOR</h2>
  				  <h3 class="faster-headline headline" style="color: white; font-family: " primary-bold" ,arial,"helvetica="" neue",helvetica,sans-serif="" !important;"=""><u ffcolor="red">CRICKET</u></h3>
  				  <br>
                  <h4 class="subheadline sale-banner-font-set" style="color: white; text-transform: none !important; line-height: 24px !important; font-size: 40px; letter-spacing: 1px;">LOVERS</h4>      
        <button class="btn btn-danger btn-lg" role="button">Shop Cricket kits</button>
      </div>
    </div>
    <div class="item slides">
    <img src="resources/images/Basketball3.jpg">
      <div class="slide-4"></div>
      <div class="banner-content content-left">
      			<br>
      			<br>
                  <h2 class="faster-headline headline" style="color: white; font-family: " primary-bold",arial,"helvetica="" neue",helvetica,sans-serif="" !important;"="">FOR</h2>
  				  <h3 class="faster-headline headline" style="color: white; font-family: " primary-bold" ,arial,"helvetica="" neue",helvetica,sans-serif="" !important;"=""><u ffcolor="gold">BASKETBALL</u></h3>
  				  <br>
                  <h4 class="subheadline sale-banner-font-set" style="color: white; text-transform: none !important; line-height: 24px !important; font-size: 40px; letter-spacing: 1px;">JAM</h4>
               <button class="btn btn-danger btn-lg" role="button">Shop Basketball kits</button>
               
      </div>
    </div>
    <div class="item slides">
    <img src="resources/images/running2.jpg" style="opacity:0.9;">
      <div class="slide-5"></div>
      <div class="banner-content content-left">
      			<br>
      			<br>
      			<br>
      			<br>
                  <h2 class="faster-headline headline" style="color: white; font-family: " primary-bold",arial,"helvetica="" neue",helvetica,sans-serif="" !important;"="">START</h2>
  				  <h3 class="faster-headline headline" style="color: white; font-family: " primary-bold" ,arial,"helvetica="" neue",helvetica,sans-serif="" !important;"=""><u ffcolor="gold">RUNNING</u></h3>
  				  <br>
                  <h4 class="subheadline sale-banner-font-set" style="color: white; text-transform: none !important; line-height: 24px !important; font-size: 40px; letter-spacing: 1px;">NOW</h4>
               <button class="btn btn-danger btn-lg" role="button">Shop Now</button>
               
      </div>
    </div>
  </div> 
  <!-- Left and right controls -->
 
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="" aria-hidden="true"></span>
    
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="" aria-hidden="true"></span>
  </a>
</div>
    
    
    
    <a href="#section2">
        <div class="scroll-down bounceInDown animated">
            <span>
                <i class="fa fa-angle-down fa-2x"></i>
            </span>
        </div>
    </a>
    </div>
</section>

<section class="container-fluid" id="section2">
<h2 class="text-center">Shop myClub</h2>
<br>
    <div class="container v-center">
        <div class="row">
            <div class="col-sm-4">
                <div class="row">
                    <div class="col-sm-12 text-center">
                        <div class="panel panel-default slideInLeft animate">
                            <div class="panel-heading">
                                <h3>MENS</h3></div>
                            <div class="panel-body">
                                 <img src="resources/images/mens.jpg" class="img-circle center-block img-responsive"alt="MEN's" style="width:200px;height:200px">
        						<br>  						
        						<a href="#" class="btn btn-danger btn-lg btn-huge lato">Shop Now</a>
                                <hr>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-4 text-center">
                <div class="row">
                    <div class="col-sm-12 text-center">
                        <div class="panel panel-default slideInUp animate">
                            <div class="panel-heading">
                                <h3>WOMENS</h3></div>
                            <div class="panel-body">
                                <img src="resources/images/womens.jpg" class="img-circle center-block img-responsive" alt="WOMEN's" style="width:200px;height:200px">
        						<br>
        						<a href="#" class="btn btn-danger btn-lg btn-huge lato">Shop Now</a>
                               	<hr>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-4 text-center">
                <div class="row">
                    <div class="col-sm-12 text-center">
                        <div class="panel panel-default slideInRight animate">
                            <div class="panel-heading">
                                <h3>KIDS</h3></div>
                            <div class="panel-body">
                                <img src="resources/images/kids.jpg" class="img-circle center-block img-responsive" alt="KIDs" style="width:200px;height:200px">
                                <br>
                                <a href="#" class="btn btn-danger btn-lg btn-huge lato">Shop Now</a>
                                <hr>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--/row-->
        <div class="row">
            <br>
        </div>
    </div>
    <!--/container-->
</section>

<section id="section10" >
    <div class="container-fluid v-center">
    <h1 class="text-center lato"style="color:white">BY BRANDS</h1>
        <br>
        <br>
        <div class="row">
        <br>
            <div class="col-sm-2 col-sm-offset-2 col-xs-6">
                <div class="text-center">
                    <a href="">
                        <img style="width:150px;height:150px" class="img-circle center-block img-responsive img-thumbnail" src="resources/images/puma1.jpg">
                    </a>
                    <h2 class="text-center lato" style="color:#f44d3c">PUMA</h2>
                </div>
            </div>
            <div class="col-sm-2 col-xs-6">
                <div class="text-center">
                    <a href="">
                        <img style="width:150px;height:150px" class="img-circle center-block img-responsive img-thumbnail" src="resources/images/adidas1.jpg">
                    </a>
                    <h2 class="text-center lato"style="color:#f44d3c">ADIDAS</h2>
                </div>
            </div>
            <div class="col-sm-2 col-xs-6">
                <div class="text-center">
                    <a href="">
                        <img style="width:150px;height:150px" class="img-circle img-responsive img-thumbnail" src="resources/images/nike1.jpg">
                    </a>
                    <h2 class="text-center lato"style="color:#f44d3c">NIKE</h2>
                </div>
            </div>
            <div class="col-sm-2 col-xs-6">
                <div class="text-center">
                    <a href="">
                        <img style="width:150px;height:150px" class="img-circle img-responsive img-thumbnail" src="resources/images/reebok.png">
                    </a>
                    <h2 class="text-center lato"style="color:#f44d3c">REEBOK</h2>
                </div>
            </div>
        </div>
        
        <!--/row-->
    </div>
</section>

<section class="container-fluid" id="section5">
    <div class="row">
        <div class="col-sm-6 col-sm-offset-3 col-md-4 col-md-offset-4">
            <h2 class="text-center lato">Some Famous and Trending clubs.</h2>
            <hr>
            <div class="media">
                <h3>Man Utd FC</h3>
                <div class="media-left">
                    <img style="width:100px;height:100px" src="resources/images/manutd1.png">
                </div>
                <div class="media-body media-middle">
                    <p><a href="#" style="margin-left:100px" class="btn btn-danger btn-responsive btn-lg btn-huge lato">Shop Now</a> </p>
                    </div>
            </div>
            <hr>
            <div class="media">
                <h3>Real Madrid CF</h3>
                <div class="media-body media-middle">
                    <p><a href="#" class="btn btn-danger btn-lg btn-huge lato">Shop Now</a> </p>
                     </div>
                <div class="media-right">
                    <img style="width:100px;height:100px" src="resources/images/realmadrid.png">
                </div>
            </div>
            <hr>
            <div class="media">
                <h3> FC Barcelona</h3>
                <div class="media-left">
                    <img style="width:100px;height:100px" src="resources/images/fcbarca.jpg">
                </div>
                <div class="media-body media-middle">
                    <p><a href="#" style="margin-left:100px" class="btn btn-danger btn-lg btn-huge btn-responsive lato">Shop Now</a> </p>
                    </div>
            </div>
            <hr>
            <div class="media">
                <h3>FC Bayern Munich </h3>
                <div class="media-body media-middle">
                    <p><a href="#" class="btn btn-danger btn-lg btn-huge lato">Shop Now</a> </p>
                    </div>
                <div class="media-right">
                    <img style="width:100px;height:100px" src="resources/images/fcbayren.png">
                </div>
            </div>
            <hr>
            <div class="media">
                <h3>Arsenal FC</h3>
                <div class="media-left">
                    <img style="width:100px;height:100px" src="resources/images/arsenal.jpg">
                </div>
                <div class="media-body media-middle">
                    <p><a href="#" style="margin-left:100px" class="btn btn-danger btn-responsive btn-lg btn-huge lato">Shop Now</a> </p>
                </div>
            </div>
            <hr>
            <div class="media">
                <h3>Juventus FC</h3>
                <div class="media-body media-middle">
                 	<p><a href="#" class="btn btn-danger btn-lg btn-huge lato">Shop Now</a> </p>
                </div>
                <div class="media-right">
                    <img style="width:100px;height:100px" src="resources/images/juventus.jpg">
                </div>
            </div>

        </div>
    </div>
</section>
<br>
<br>
<br>

<section class="container-fluid" id="section3">
    <h1 class="text-center"><p class="text-center">
                <img class="img-responsive center-block" style="width:200px;height:150px" src="resources/images/myclub-logo1.png" alt="myClub logo">
            </p></h1>
    <div class="row">
        <div class="col-sm-6 col-sm-offset-3">
            <h3 class="text-center lato slideInUp animate">The <strong>myClub</strong> is a one stop shop for all your sports clubs merchandise needs.</h3>
            <br>
            <div class="row">
                <div class="col-xs-4 col-xs-offset-1">myClub understands its shoppers needs and caters to them with choice of jersey , accessories, footwear from over various leading sports and international brands.</div>
                <div class="col-xs-2"></div>
                <div class="col-xs-4 text-right">Being e-commerce store for clubs merchandise, myClub aims at providing a hassle free and enjoyable shopping experience to all its shoppers.</div>
            </div>
            <br>
            
        </div>
    </div>
</section>
<section class="container-fluid" id="section6">
    <ul class="row list-unstyled">
        <li class="col-md-6 col-md-offset-1 col-xs-10 col-xs-offset-1">
            <h3 class="text-center">So get started today only by joining us.</h3>
        </li>
        <li class="col-md-3 col-md-offset-0 col-xs-10 col-xs-offset-1 text-center">
            <a href="Signup" class="center-block btn btn-hero btn-lg btn-huge lato animate slideInRight">Sign UP</a>
        </li>
    </ul>
</section>
<br>
<br>
<br>

<section id="section4">
    <div class="container v-center">
        <div class="row">
            <div class="col-md-12">
                <h1 class="text-center">Make Contact</h1>
                <hr>
            </div>
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
                        <button class="btn btn-danger btn-lg pull-right">Contact Us</button>
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


<!-- <section class="container-fluid" id="section7">
    <div class="row">
        fontawesome icons
        <div class="col-sm-1 col-sm-offset-3 col-xs-4 text-center">
            <i class="fa fa-github fa-4x"></i>
        </div>
        <div class="col-sm-1 col-xs-4 text-center">
            <i class="fa fa-foursquare fa-4x"></i>
        </div>
        <div class="col-sm-1 col-xs-4 text-center">
            <i class="fa fa-pinterest fa-4x"></i>
        </div>
        <div class="col-sm-1 col-xs-4 text-center">
            <i class="fa fa-google-plus fa-4x"></i>
        </div>
        <div class="col-sm-1 col-xs-4 text-center">
            <i class="fa fa-twitter fa-4x"></i>
        </div>
        <div class="col-sm-1 col-xs-4 text-center">
            <i class="fa fa-dribbble fa-4x"></i>
        </div>
    </div>
</section> -->
<footer class="footer-distributed" id="footer">

			<div class="footer-left">

			<img class=" img-responsive" style="width:200px;height:150px; margin-left:20px" src="resources/images/myclub-logo1.png" alt="myClub logo">
				<br>
				<br>
				<p class="nav">
					<a href="#section1">Home</a>
					·
					<a href="#">Shop</a>
					·
					<a href="About Us">About</a>
					·
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

<!-- <footer id="footer">
    <div class="container">
        <div class="row">
            <div class="col-xs-6 col-sm-6 col-md-3 column">
                <h4>Information</h4>
                <ul class="nav">
                    <li><a href="about-us.html">Products</a></li>
                    <li><a href="about-us.html">Services</a></li>
                    <li><a href="about-us.html">Benefits</a></li>
                    <li><a href="elements.html">Developers</a></li>
                </ul>
            </div>
            <div class="col-xs-6 col-md-3 column">
                <h4>Follow Us</h4>
                <ul class="nav">
                    <li><a href="#">Twitter</a></li>
                    <li><a href="#">Facebook</a></li>
                    <li><a href="#">Google+</a></li>
                    <li><a href="#">Pinterest</a></li>
                </ul>
            </div>
            <div class="col-xs-6 col-md-3 column">
                <h4>Contact Us</h4>
                <ul class="nav">
                    <li><a href="#">Email</a></li>
                    <li><a href="#">Headquarters</a></li>
                    <li><a href="#">Management</a></li>
                    <li><a href="#">Support</a></li>
                </ul>
            </div>
            <div class="col-xs-6 col-md-3 column">
                <h4>Customer Service</h4>
                <ul class="nav">
                    <li><a href="#">About Us</a></li>
                    <li><a href="#">Delivery Information</a></li>
                    <li><a href="#">Privacy Policy</a></li>
                    <li><a href="#">Terms &amp; Conditions</a></li>
                </ul>
            </div>
        </div>
        /row
        <p class="text-right">©2015</p>
    </div>
</footer> -->

<div class="scroll-up">
    <a href="#"><i class="fa fa-angle-up"></i></a>
</div>

<div id="myModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h2 class="text-center"><img style="width:100px;height:100px" src="resources/images/user.png" class="img-circle"><br>Login</h2>
            </div>
            <div class="modal-body row"><br>
                <form role="form" method="post" action="login" accept-charset="UTF-8" class=" form col-md-10 col-md-offset-1 col-xs-12 col-xs-offset-0">
                    <div class="form-group">
                        <input type="text" name="username" class="form-control input-lg" placeholder="Username / Email">
                    </div>
                    <div class="form-group">
                        <input type="password" name="password" class="form-control input-lg" placeholder="Password">
                    </div>
                    <div class="form-group">
                        <button class="btn btn-danger btn-lg btn-block">Sign In</button>
                        <br><span><a href="#">Forget password ?</a></span><br>
                        <br>
                        <a href="Signup" class="btn btn-hero btn-lg btn-block">Register Now</a>
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
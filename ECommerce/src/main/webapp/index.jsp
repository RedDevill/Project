<!DOCTYPE html>
<html lang="en">

	<!--    *****************************   HEAD    ***************************  -->

<head>
  <title>myClub</title>
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
         <a class="navbar-brand" href="#"> <img src="resources/images/logo.jpg" alt="myClub"></a>
        </div>
        
       <div id="navbar1" class="navbar-collapse collapse">
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">HOME</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">SHOP <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">MEN's</a></li>
          <li><a href="#">WOMEN's</a></li>
          <li><a href="#">KIDS</a></li>
        </ul>
      </li>
      <li><a href="#">BRANDS</a></li>
      <li><a href="#">ABOUT US</a></li>
    </ul>
      <ul class="nav navbar-nav navbar-right">
      <form class="navbar-form navbar-left" role="search">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Search">
        </div>
        <button type="submit" class="btn btn-default">Submit</button>
      </form>
     <!--  <li><a href="#"><span class="glyphicon glyphicon-user"></span> SIGN UP</a></li>
      
     <!-- <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> LOGIN</a></li>  -->
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
											 <label class="sr-only" for="exampleInputEmail2">Email address</label>
											 <input type="email" class="form-control" id="exampleInputEmail2" placeholder="Email address" required>
										</div>
										<div class="form-group">
											 <label class="sr-only" for="exampleInputPassword2">Password</label>
											 <input type="password" class="form-control" id="exampleInputPassword2" placeholder="Password" required>
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
								New here ? <a href="#"><b>Join Us</b></a>
							</div>
					 </div>
				</li>
			</ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
  
  
  
  
  
  <!--  *********************  Carousel section  ***************************  -->
    
  
  
    
   <div id="myCarousel" class="carousel slide sidenav" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="resources/images/adidas.jpg" alt="Adidas" class="img-responsive">
      <div class="carousel-caption">
        <h3>Adidas</h3>
        <p></p>
      </div>
    </div>

    <div class="item">
      <img src="resources/images/puma.jpg" alt="Puma" class="img-responsive">
      <div class="carousel-caption">
        <h3>Puma</h3>
        <p></p>
      </div>
    </div>

    <div class="item">
      <img src="resources/images/nike.jpg" alt="Nike" class="img-responsive">
      <div class="carousel-caption">
        <h3>Nike</h3>
        <p></p>
      </div>
    </div>

    <div class="item">
      <img src="resources/images/umbro.jpg" alt="Umbro"class="img-responsive" >
      <div class="carousel-caption">
        <h3>Umbro</h3>
        <p></p>
      </div>
    </div>
  </div>

  <!-- Left and right controls -->
  
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
<video src="#"></video>


<div class="banner-hold-main  ">
            <div class="banner-img-content">
               <div class="banner-content content-left" style="top:10%;max-width: 1100px;">
                  <h2 class="faster-headline headline" style="color: white; font-family: " primary-bold",arial,"helvetica="" neue",helvetica,sans-serif="" !important;"="">FOR</h2>
  <h3 class="faster-headline headline" style="color: white; font-family: " primary-bold" ,arial,"helvetica="" neue",helvetica,sans-serif="" !important;"=""><u ffcolor="gold">FOOTBALL</u></h3>
                  <h4 class="subheadline sale-banner-font-set" style="color: white; text-transform: none !important; line-height: 24px !important; font-size: 40px; letter-spacing: 1px;">FANS</h4>
               
                  <p class="angle-banner-p turn-it" style="color: white;font-size: 16px;"></p>
                  <div class="btns desktop-tabs" style="margin-bottom: -11%;">
                     <a class="sign"  href="#">SHOP FOOTBALL KITS</a>
                  </div>
               </div>
<img src="resources/images/football3.jpg" class="img-responsive"  alt="fierce"> 
           


<div class="banner-hold-main img1 ">
            <div class="banner-img-content">
               <div class="banner-content content-right" style="top:14%;max-width: 1100px;">
                  <h2 class="faster-headline headline" style ="color: white; font-family: " primary-bold",arial,"helvetica="" neue",helvetica,sans-serif="" !important;"="">FOR</h2>
  <h3 class="faster-headline headline" style="color: white; font-family: " primary-bold" ,arial,"helvetica="" neue",helvetica,sans-serif="" !important;"=""><u ffcolor="gold">CRICKET</u></h3>
                  <h4 class="subheadline sale-banner-font-set" style="color: white; text-transform: none !important; line-height: 24px !important; font-size: 40px; letter-spacing: 1px;">LOVER</h4>
               
                  <p class="angle-banner-p turn-it" style="color: white;font-size: 16px;"></p>
                  <div class="btns desktop-tabs" style="margin-bottom: -11%;">
                     <a class="sign"  href="#">SHOP CRICKET KITS</a>
                  </div>
               </div>
<img src="resources/images/cricket3.jpg" class="img-responsive" alt="fierce"> 
<!--style="padding-left: 150px;  padding-right: 150px; height:450px;width: 6000px;" -->
           


<div class="banner-hold-main img1">
            <div class="banner-img-content">
               <div class="banner-content content-left" style="top:20%;max-width: 1100px;">
                  <h2 class="faster-headline headline" style="color: white; font-family: " primary-bold",arial,"helvetica="" neue",helvetica,sans-serif="" !important;"="">FOR</h2>
  <h3 class="faster-headline headline" style="color: white; font-family: " primary-bold" ,arial,"helvetica="" neue",helvetica,sans-serif="" !important;"=""><u ffcolor="gold">BASKETBALL</u></h3>
                  <h4 class="subheadline sale-banner-font-set" style="color: white; text-transform: none !important; line-height: 24px !important; font-size: 40px; letter-spacing: 1px;">JAM</h4>
               
                  <p class="angle-banner-p turn-it" style="color: white;font-size: 16px;"></p>
                  <div class="btns desktop-tabs" style="margin-bottom: -11%;">
                     <a class="sign"  href="#">SHOP BASKETBALL KITS</a>
                  </div>
               </div>
<img src="resources/images/Basketball3.jpg" class="img-responsive" alt="fierce">
           

<!--   ************************  Shop section   **************************** -->




<!--   ************************  Shop section   **************************** -->


	<!--  ***********************   TRending Clubs   **********************  -->

<div>
  <h2 class="text-center"><dt>Trending Clubs</dt></h2>
  <div class="row">
    <div class="col-md-3"style="margin-left:200px;" >
      <a href="resources/images/ManUtd.jpg" title=" MAN UTD">
        
        <img src="resources/images/ManUtd.jpg" class="img-rounded center-block img-responsive"alt="MAN UTD " style="width:200px;height:200px">
        <h4 class="text-center">MAN UTD</h4>
      </a>
    </div>
    <div class="col-md-3">
      <a href="resources/images/realmadrid.jpg" title="Real Madrid">
        <p></p>
        <img src="resources/images/realmadrid.jpg" class="img-rounded center-block img-responsive " alt="Real Madrid" style="width:200px;height:200px">
         <h4 class="text-center">REAL MADRID</h4>
      </a>
    </div>
    <div class="col-md-3">
      <a href="resources/images/fcbarca.jpg" title=" FC Barcelona">
        <p></p>
        <img src="resources/images/fcbarca.jpg" class="img-rounded center-block img-responsive" alt="FC BARCELONA" style="width:200px;height:200px">
         <h4 class="text-center">FC BARCELONA</h4>
      </a>
    </div>
  </div>
</div>
 
 
 		<!--    ***************************      myCLUB    ************************** -->
 


<div>
  <h2 class="text-center"><dt>myClub</dt></h2>
  <div class="row">
    <div class="col-md-3"style="margin-left:200px;" >
      <a href="resources/images/mens.jpg" title=" MENs">
        
        <img src="resources/images/mens.jpg" class="img-circle center-block img-responsive"alt="MEN's" style="width:200px;height:200px">
        <h4 class="text-center">MEN</h4>
      </a>
    </div>
    <div class="col-md-3">
      <a href="resources/images/womens.jpg" title="WOMENs">
        <p></p>
        <img src="resources/images/womens.jpg" class="img-circle center-block img-responsive" alt="WOMEN's" style="width:200px;height:200px">
         <h4 class="text-center">WOMEN</h4>
      </a>
    </div>
    <div class="col-md-3 clearfix ">
      <a href="resources/images/kids.jpg" title="KIds">
        <p></p>
        <img src="resources/images/kids.jpg" class="img-circle center-block img-responsive" alt="KIDs" style="width:200px;height:200px">
         <h4 class="text-center">KIDS</h4>
      </a>
    </div>
  </div>
</div>
 
 
 
 	<!--   ***************************   BODY   ***************************** -->
 
    
<div class="container-fluid">
 
</div>




	<!--  ******************************   footer    ***************************-->




<footer class="bs-footer" role="contentinfo" style= "position:fixed">
  <div class="container">
    <div class="bs-social">
      <ul class="bs-social-buttons">
        <li class="facebook-button">
          <iframe src="//www.facebook.com/plugins/like.php?href=http%3A%2F%2Fbootsnipp.com&width=130&height=20&colorscheme=light&layout=button_count&action=like&show_faces=false&send=true&appId=112989545392380" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:130px; height:20px;" class="facebook-btn" allowTransparency="true"></iframe>
        </li>
        <li class="follow-btn">
          <iframe allowtransparency="true" frameborder="0" scrolling="no"
            src="//platform.twitter.com/widgets/follow_button.html?screen_name=myClub"
            style="width:236px; height:20px;" class="twitter-follow-button twitter-follow-button"></iframe>
        </li>
        <li class="tweet-btn">
          <iframe allowtranspa
          rency="true" frameborder="0" scrolling="no"
                 src="https://platform.twitter.com/widgets/tweet_button.html?lang=en&via=myClub&url= #"
                 style="width:107; height:20px;" class="twitter-share-button twitter-count-horizontal"></iframe>
        </li>
      </ul>
    </div>
    <p>myClub.com by <a href="#" target="_blank">Harsh Ahlawat</a>. | <a href="https://plus.google.com/" target="_blank" rel="publisher">Google+</a> | <a href="http://myClub.com/privacy" target="_blank">Site Privacy policy</a><!-- | Featured snippets are <a href="http://myClub.com/license">MIT license.</a> | Built with <a href="http://getbootstrap.com" target="_blank" title="bootstrap framework"><img src="http://bootsnipp.com/img/laravel.jpg" alt="laravel php framework"></a> Hosted on <a href="http://pagodabox.com" target="_blank" title="pagodabox php cloud hosting"><img src="http://bootsnipp.com/img/pagoda.jpg" alt="pagodabox php cloud hosting"></a> | Bootstrap CDN by <a href="http://bit.ly/maxCDN" target="_blank"><img src="http://www.ftjcfx.com/image-7593394-11373487" width="1" height="1" border="0"/><img src="http://bootsnipp.com/img/maxcdn.png"></a></p>-->
  </div>
  
</footer> 
</body>
</html>


<!DOCTYPE html>
<html lang="en">

	<!--    *****************************   HEAD    ***************************  -->

<head>
  <title>Sign Up</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="https://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://formden.com/static/cdn/bootstrap-iso.css" /> 

<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
  
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-social/4.10.1/bootstrap-social.css" rel="stylesheet" >
    <link rel="stylesheet" href="resources/bootstrap/css/Signup.css">
    
   
    
    
    <script type="text/javascript">
    function Validate() {
        var password = document.getElementById("password").value;
        var confirmPassword = document.getElementById("ReEnterPassword").value;
        if (password != confirmPassword) {
            alert("Passwords do not match.");
            return false;
        }
        return true;
    }
</script>
</head>



	<!--   ***************************    Nav Bar   ******************************* -->
	
	
	
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
         <a class="navbar-brand" href="index"> <img src="resources/images/logo.jpg" alt="myClub"></a>
        </div>
        
       <div id="navbar1" class="navbar-collapse collapse">
    <ul class="nav navbar-nav">
      <li ><a href="index">HOME</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">SHOP <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">MEN's</a></li>
          <li><a href="#">WOMEN's</a></li>
          <li><a href="#">KIDS</a></li>
        </ul>
      </li>
      <li><a href="About Us">ABOUT US</a></li>
      <li class="active"><a href="Signup">SIGN UP</a></li>
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
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
<br>
<br>
<div style="background-img:url(football4.jpg);">
<div class="container"style="margin-top:70px;">
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-4 well well-sm">
            <legend><a href="http://www.jquery2dotnet.com"><i class="glyphicon glyphicon-globe"></i></a> Sign up!</legend>
            <form action="SignUP" method="post" class="form" role="form">
            <div class="row">
                <div class="col-xs-6 col-md-6">
                    <input class="form-control" name="firstname" placeholder="First Name" type="text"
                        required autofocus />
                </div>
                <div class="col-xs-6 col-md-6">
                    <input class="form-control" name="lastname" placeholder="Last Name" type="text" required />
                </div>
            </div>
            <input class="form-control"  name="email" placeholder="Your Email" type="email" />
            <input class="form-control" id="password" name="spassword" placeholder="Password" type="password" />
            <input class="form-control" id="ReEnterPassword" name="reenterpassword" placeholder="Re-Enter Password" type="password" />
          
            <label for="">Birth Date</label>
            
            <div class="row">
                <div class="col-xs-4 col-md-4">
                    <select class="form-control">
                        <option value="Month">Month</option>
                        
                    </select>
                </div>
                <div class="col-xs-4 col-md-4">
                    <select class="form-control">
                        <option value="Day">Day</option>
                    </select>
                </div>
                <div class="col-xs-4 col-md-4">
                    <select class="form-control">
                        <option value="Year">Year</option>
                    </select>
                </div>
            </div>
            <label class="radio-inline">
                <input type="radio" name="gender" id="inlineCheckbox1" value="male" />
                Male
            </label>
            <label class="radio-inline">
                <input type="radio" name="gender" id="inlineCheckbox2" value="female" />
                Female
            </label>
            <br />
            <br />
            <button id="SignUP" class="btn btn-lg btn-primary btn-block" type="submit" onclick="return Validate()">Sign Up
             </button>
            </form>
        </div>
        
    </div>
    </div>
    </div>
    <jsp:include page="footer.jsp"></jsp:include>
    </body>
    </html>
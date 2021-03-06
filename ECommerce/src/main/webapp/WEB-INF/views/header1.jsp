
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@page isELIgnored="false" %>
<html lang="en">

	<!--    *****************************   HEAD    ***************************  -->

<head>

  <title></title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
    <c:url value="/resources/images" var="y"/>
	<c:url value="/resources/bootstrap/css1" var="a"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-social/4.10.1/bootstrap-social.css" rel="stylesheet" >
   
   <script type="text/javascript">
   $(document).ready(function() {
	    $(".dropdown-toggle").dropdown();
	});
   </script>
   <!--  <!-- link rel="stylesheet" href="resources/bootstrap/css1/footer-distributed-with-address-and-phones.css" />
    <link rel="stylesheet" href="resources/bootstrap/css1/styles.css">
    <link rel="stylesheet" href="resources/bootstrap/css1/image.css"> -->
	<link rel="stylesheet" href="${a}/header.css">
</head>



	<!--   ***************************    Nav Bar   *******************************-->
	
	
	
<body>
	
<body>


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
                <li><a href="index">Home</a></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Users <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="ViewUsers">View Users</a></li>
						</ul></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Category <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="AddCategory">Add Category</a></li>
							<li><a href="ViewCategory">View Category</a></li>
						</ul></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Product <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="AddProduct">Add Product</a></li>
							<li><a href="ViewProduct">View Product</a></li>
						</ul></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Supplier <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="AddSupplier">Add Supplier</a></li>
							<li><a href="ViewSupplier">View Supplier</a></li>
						</ul></li>
					<li>&nbsp;</li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<form class="navbar-form navbar-left" role="search">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Search">
						</div>
						<button type="submit" class="btn btn-danger btn-default">Submit</button>
					</form>
    
      		
            <%-- <sec:authorize access="isAuthenticated()">
               <ul class="nav navbar-nav navbar-right">
               		<li>
               			<a href="logout">Sign Out</a>
                	</li>
                </ul>
            </sec:authorize> --%>
            
            
            <sec:authorize access="isAnonymous()">
               <ul class="nav navbar-nav navbar-right">
               	<li><a href="Login"><i style="color:#1abc9c" class="fa fa-sign-in fa-lg"></i></a></li>
                </ul>
            </sec:authorize>
            
            <sec:authorize access="hasRole('ADMIN')">
                <ul class="nav navbar-nav navbar-right">
                <li>
                	<a href="">Welcome <b> <sec:authentication property="principal.username"/></b></a>
                </li>
               <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">
                <span style="color:#f44d3c" class="glyphicon glyphicon-triangle-bottom"></span></a>
        			<ul class="dropdown-menu">
          				<li><a href="#"><i style="color:#f44d3c" class="fa fa-user" aria-hidden="true"></i>My Account</a></li>
          				<li><a href="#"><i style="color:#f44d3c" class="fa fa-shopping-cart" aria-hidden="true"></i> MyCart</a></li>
          				<li><a href="logout"><i style="color:#f44d3c" class="fa fa-sign-out" aria-hidden="true"></i>Log Out</a></li>
        			</ul>
        		</li>
               </ul>
               </sec:authorize> 
             
             <sec:authorize access="hasRole('USER')">
                <ul class="nav navbar-nav navbar-right">
                <li>
                	<a href="">Welcome <b> <sec:authentication property="principal.username"/></b></a>
                </li>
                <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">
                <span style="color:#f44d3c" class="glyphicon glyphicon-triangle-bottom"></span></a>
        			<ul class="dropdown-menu">
          				<li><a href="#"><i style="color:#f44d3c" class="fa fa-user" aria-hidden="true"></i> My Account</a></li>
          				<li><a href=""><i style="color:#f44d3c" class="fa fa-shopping-cart" aria-hidden="true"></i> MyCart</a></li>
          				<li><a href="logout"><i style="color:#f44d3c" class="fa fa-sign-out" aria-hidden="true"></i> Log Out</a></li>
        			</ul>
        		</li>
                <!-- <li>
                	<a href="Cart"><i class="fa fa-shopping-cart" aria-hidden="true"></i></a>
                </li>
                <li>
                	<a href="logout">Sign Out</a>
                </li> -->
               </ul>
               </sec:authorize> 
                
            </ul>
        </div>
    </div>
</nav>

<%-- <div id="myModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">�</button>
                <h2 class="text-center"><img style="width:100px;height:100px" src="${y}/user.png" class="img-circle"><br>Login</h2>
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
                        <a href="Signup" class="btn btn-hero btn-lg btn-block">Register Now</a>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <h6 class="text-center"><a href="">Privacy is important to us. Click here to read why.</a></h6>
            </div>
        </div>
    </div>
</div> --%>

<!-- <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    
    <script src="js/scripts.js"></script> -->

<!-- @Override
	protected void configure(HttpSecurity http)throws exception{
			http.authorizeRequests()
			.antMatchers("/ProductAdmin**").access("hasRole('ADMIN')")
			.and()
			.formLogin()
			.loginPage("/Login").and().logout().logoutRequestMatcher(new AntPathRequestMatcher("/logout")).and().csrf().disable();
		} -->

</body>
</html>
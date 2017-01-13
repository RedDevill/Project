<!DOCTYPE html>
<html lang="en">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
  <head>
    <meta charset="utf-8">
    
    <title>myClub | Home</title>
    <meta name="description" content="This one page example has a fixed navbar and full page height sections. Each section is vertically centered on larger screens, and then stack responsively on smaller screens. Scrollspy is used to activate the current menu item. This layout also has a contact form example. Uses animate.css, FontAwesome, Google Fonts (Lato and Bitter) and Bootstrap." />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="generator" content="Codeply">
	<c:url value="/resources/images" var="y"/>
	<c:url value="/resources/bootstrap/css1" var="a"/>


    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" />
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" />
    <link href="//cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.1/animate.min.css" rel="stylesheet" />
	
	   <link rel="stylesheet" href="${a }/Signup.css" />
    <link rel="stylesheet" href="${a }/styles.css" />
   <!--  <link rel="stylesheet" href="resources/bootstrap/css1/image.css" />
    <link rel="stylesheet" href="resources/bootstrap/css1/footer-distributed-with-address-and-phones.css" />
     -->
    
  </head>
 
<body>
<jsp:include page="header.jsp"></jsp:include>
<br>
<br>
<section class="container-fluid" id="section3">
<hgroup>
<div style="margin-left:400px; margin-top:50px;";>

<h1 style="color: red"><dt>Thanks For Shopping With Us</dt></h1>
<br><br>
<h3  class="text-warning" style="margin-left:8%">Your order has been placed</h3>
<br><br>
<h3  class="text-warning">Your Product will be Shipped Within few Days</h3>
</div>
</hgroup> 
<br>


    
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
        						<a href="product" class="btn btn-danger btn-lg btn-huge lato">Shop Now</a>
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

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
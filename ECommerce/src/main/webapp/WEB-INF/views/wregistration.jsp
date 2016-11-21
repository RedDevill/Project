<!DOCTYPE html>
<html lang="en">

	<!--    *****************************   HEAD    ***************************  -->

<head>
  <title>Welcome</title>
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
   
</head>



	<!--   ***************************    Nav Bar   ******************************* -->
	
	
	
<body><jsp:include page="header.jsp"></jsp:include>
<!--  <nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
       <img src="resources/images/logo.jpg" alt="myClub">
       <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar1">
          span class="sr-only">Toggle navigation</span
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
         <a class="navbar-brand" href="#"> <img src="resources/images/logo.jpg" alt="myClub"></a>
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
    </ul>
    </div>/.navbar-collapse
  </div>/.container-fluid
</nav> -->
<br>
<br>
<br>
<div class="container">
 <h3>thanks for registering with us</h3>
  <table class="table table-hover">
    <thead>
      <tr>
        <th>Firstname</th>
        <th>Lastname</th>
        <th>Email</th>
        <th>Password</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>${fistname}</td>
        <td>${lastname}</td>
        <td>${email}</td>
        <td>${spassword}</td>
      </tr>
          </tbody>
  </table>
</div>

<br>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
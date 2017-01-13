<!DOCTYPE html>
<%@page import="com.niit.model.ShippingAddress"%>
<html lang="en" ng-app="myApp">
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

	<script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.5.0/angular.min.js"></script>
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" />
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" />
    <link href="//cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.1/animate.min.css" rel="stylesheet" />
	
	   <link rel="stylesheet" href="${a}/Order.css" />
	    <link rel="stylesheet" href="${a}/style.css" />
	    <script >
console.log("inside script");
var app=angular.module('myApp',[]);
app.controller('orderCtrl1', ['$scope', function($scope) {
	console.log("inside order controller js");
	$scope.addr=${addr};
	$scope.x1=${g1};
	$scope.estimated=60;

}]);
	  </script>
   <!--  <link rel="stylesheet" href="/style.css" />
    <link rel="stylesheet" href="resources/bootstrap/css1/image.css" />
    <link rel="stylesheet" href="resources/bootstrap/css1/footer-distributed-with-address-and-phones.css" />
     -->
    
  </head>
 
<body ng-app="myApp">
<jsp:include page="header.jsp"></jsp:include>
<br>
<br>
<br>
<br>
<div class="container" ng-app="myApp" ng-controller="orderCtrl1">
<script >
	  </script>
    <div class="row">
        <div class="col-xs-12">
    		<div class="invoice-title">
    			<h2><i style="color:#f44d3c" class="fa fa-inr" aria-hidden="true"></i> Invoice</h2><h3 class="pull-right" style="color:#f44d3c">Order # 12345</h3>
    		</div>
    		<hr>
    		<div class="row">
    			<div class="col-xs-6">
    				<address>
    				<strong style="color:#f44d3c">Billed To:</strong><br>
    				
    					<br>${sa.username}<br>
    					<br>
    					${sa.line1}<br>
    					${sa.line2}<br>
    					${sa.city}<br>
    					${sa.state} - ${sa.zipcode}<br>
    					${sa.country}
    				</address>
    			</div>
    			<div class="col-xs-6 text-right">
    				<address>
        			<strong style="color:#f44d3c">Shipped To:</strong><br>
    					<br>${sa.username}<br>
    					<br>
    					${sa.line1}<br>
    					${sa.line2}<br>
    					${sa.city}<br>
    					${sa.state} - ${sa.zipcode}<br>
    					${sa.country}
    				</address>
    			</div>
    		</div>
    		<div class="row">
    			<div class="col-xs-6">
    				<address>
    					<strong style="color:#f44d3c">Payment Method:</strong><br>
    					<br>${Payment.paymentmethod}<br>
    				</address>
    			</div>
    			<div class="col-xs-6 text-right">
    				<address>
    					<strong style="color:#f44d3c">Order Date:</strong><br>
    				<%-- 	<br>${ca.addedDate}<br><br>
    				</address>
    			</div> --%>
    		</div>
    	</div>
    </div>
    
    <div class="row">
    	<div class="col-md-12">
    		<div class="panel panel-default">
    			<div class="panel-heading">
    				<h3 class="panel-title" style="color:#f44d3c"><strong>Order summary</strong></h3>
    			</div>
    			<div class="panel-body">
    				<div class="table-responsive">
    					<table class="table table-condensed" ng-app="myApp" ng-controller="orderCtrl1">
    						<thead>
                                <tr>
        							<td><strong>Item</strong></td>
        							<td class="text-center"><strong>Price</strong></td>
        							<td class="text-center"><strong>Quantity</strong></td>
        							<td class="text-right"><strong>Totals</strong></td>
                                </tr>
    						</thead>
    						<tbody>
    							<!-- foreach ($order->lineItems as $line) or some such thing here -->
    							<c:forEach var="ca" items="${ca}">
    							<tr>
    								<td>${ca.productname}</td>
    								<td class="text-center">${ca.productprice}</td>
    								<td class="text-center">${ca.qty}</td>
    								<td class="text-right">${ca.productprice * ca.qty}</td>
    							</tr>
                              <%--   <tr>
        							<td>BS-400</td>
    								<td class="text-center">$20.00</td>
    								<td class="text-center">3</td>
    								<td class="text-right">$60.00</td>
    							</tr>
                                <tr>
            						<td>BS-1000</td>
    								<td class="text-center">$600.00</td>
    								<td class="text-center">1</td>
    								<td class="text-right">$600.00</td>
    							</tr>--%>
    							<!-- <tr>
    								<td class="thick-line"></td>
    								<td class="thick-line"></td>
    								<td class="thick-line text-center"><strong>Subtotal</strong></td>
    								<td class="thick-line text-right">$</td>
    							</tr> -->
    							<!-- <tr> 
    								<td class="no-line"></td>
    								<td class="no-line"></td>
    								<td class="no-line text-center"><strong>Shipping</strong></td>
    								<td class="no-line text-right">60</td>
    							</tr> -->
    							</c:forEach>
    							<tr>
    								<td class="no-line"></td>
    								<td class="no-line"></td>
    								<td class="no-line text-center"><strong>Total</strong></td>
    								<td class="no-line text-right">${g}</td>
    							</tr>
    						</tbody>
    					</table>
    					<a href="Thankyou" type="button" class="btn btn-danger pull-right">  Checkout <span class="glyphicon glyphicon-play"></span></a>
    				</div>
    			</div>
    		</div>
    	</div>
    </div>
</div>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
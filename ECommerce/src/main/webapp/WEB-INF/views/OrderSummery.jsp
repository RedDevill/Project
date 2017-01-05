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
	
	   <link rel="stylesheet" href="${a }/Order.css" />
	    <link rel="stylesheet" href="${a }/style.css" />
   <!--  <link rel="stylesheet" href="/style.css" />
    <link rel="stylesheet" href="resources/bootstrap/css1/image.css" />
    <link rel="stylesheet" href="resources/bootstrap/css1/footer-distributed-with-address-and-phones.css" />
     -->
    
  </head>
 
<body>
<jsp:include page="header.jsp"></jsp:include>
<br>
<br>
<br>
<div class="container">
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
    					<br>Harsh<br>
    					1234 Main<br>
    					Apt. 4B<br>
    					New Delhi-110059
    				</address>
    			</div>
    			<div class="col-xs-6 text-right">
    				<address>
        			<strong style="color:#f44d3c">Shipped To:</strong><br>
    					<br>RedDevill<br>
    					1234 Main<br>
    					Apt. 4B<br>
    					New Delhi,110058
    				</address>
    			</div>
    		</div>
    		<div class="row">
    			<div class="col-xs-6">
    				<address>
    					<strong style="color:#f44d3c">Payment Method:</strong><br>
    					<br>Visa ending **** 4242<br>
    					harsh@gmail.com
    				</address>
    			</div>
    			<div class="col-xs-6 text-right">
    				<address>
    					<strong style="color:#f44d3c">Order Date:</strong><br>
    					<br>January 5, 2017<br><br>
    				</address>
    			</div>
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
    					<table class="table table-condensed">
    						<thead>
                                <tr>
        							<td><strong ">Item</strong></td>
        							<td class="text-center"><strong>Price</strong></td>
        							<td class="text-center"><strong>Quantity</strong></td>
        							<td class="text-right"><strong>Totals</strong></td>
                                </tr>
    						</thead>
    						<tbody>
    							<!-- foreach ($order->lineItems as $line) or some such thing here -->
    							<tr>
    								<td>BS-200</td>
    								<td class="text-center">$10.99</td>
    								<td class="text-center">1</td>
    								<td class="text-right">$10.99</td>
    							</tr>
                                <tr>
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
    							</tr>
    							<tr>
    								<td class="thick-line"></td>
    								<td class="thick-line"></td>
    								<td class="thick-line text-center"><strong>Subtotal</strong></td>
    								<td class="thick-line text-right">$670.99</td>
    							</tr>
    							<tr>
    								<td class="no-line"></td>
    								<td class="no-line"></td>
    								<td class="no-line text-center"><strong>Shipping</strong></td>
    								<td class="no-line text-right">$15</td>
    							</tr>
    							<tr>
    								<td class="no-line"></td>
    								<td class="no-line"></td>
    								<td class="no-line text-center"><strong>Total</strong></td>
    								<td class="no-line text-right">$685.99</td>
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
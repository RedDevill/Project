<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
 <!-- <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script> -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.5.0/angular.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <style type="text/css">
 .table>tbody>tr>td, .table>tfoot>tr>td{
    vertical-align: middle;
}
@media screen and (max-width: 600px) {
    table#cart tbody td .form-control{
		width:20%;
		display: inline !important;
	}
	.actions .btn{
		width:36%;
		margin:1.5em 0;
	}
	
	.actions .btn-info{
		float:left;
	}
	.actions .btn-danger{
		float:right;
	}
	
	table#cart thead { display: none; }
	table#cart tbody td { display: block; padding: .6rem; min-width:320px;}
	table#cart tbody tr td:first-child { background: #333; color: #fff; }
	table#cart tbody td:before {
		content: attr(data-th); font-weight: bold;
		display: inline-block; width: 8rem;
	}
	
	
	
	table#cart tfoot td{display:block; }
	table#cart tfoot td .btn{display:block;}
	
}
 </style>

</head>
<body ng-app="myApp">
<script>
console.log("inside controller js");
      var app=angular.module('myApp',[]);
      app.controller('cartCtrl1', ['$scope', function($scope) {
      	$scope.pr=${p};
      	console.log("inside controller "+$scope.pr);

  }]);
  </script>
<div ng-controller="cartCtrl1">
{{pr}}



<br>
<br>
 <table class="table table-striped" ng-controller="cartCtrl1" >
    <thead>
      <tr>
        <th>Product ID</th>
        <th>Product Name</th>
        <th>Product Description</th>
        <th>Quantity</th>
        <th>Brand</th>
        <th>Price</th>
      </tr>
    </thead>
    <tbody>
     <tr ng-repeat="x in pr">
    <td>{{x.productid}}</td>
    <td>{{x.productname}}</td>
    <td>{{x.productdescription}}</td>
    <td>{{x.qty}}</td>
    <td>{{x.productprice}}</td>
   <!--  <td><a href="Productdetail/{{x.productID}}"><i style="color:#1abc9c" class="fa fa-exclamation" aria-hidden="true"></i></a></td>
  -->
     </tr>
      <table id="cart" class="table table-hover table-condensed" ng-controller="cartCtrl1">
    				<thead>
						<tr>
							<th style="width:50%">Product</th>
							<th style="width:10%">Price</th>
							<th style="width:8%">Quantity</th>
							<th style="width:22%" class="text-center">Subtotal</th>
							<th style="width:10%"></th>
						</tr>
					</thead>
					<tbody>
						<tr ng-repeat="x in pr">
							<td data-th="Product">
								<div class="row">
									<div class="col-sm-2 hidden-xs"><img src="http://placehold.it/100x100" alt="..." class="img-responsive"/></div>
									<div class="col-sm-10">
										<h4 class="nomargin">{{x.productname}}</h4>
										<p>{{x.productdescription}}</p>
									</div>
								</div>
							</td>
							<td data-th="Price">{{x.productprice}}</td>
							<td data-th="Quantity">
								<input type="number" class="form-control text-center" value="{{x.qty}}">
							</td>
							<td data-th="Subtotal" class="text-center">Rs. ${g}</td>
							<td class="actions" data-th="">
								<button class="btn btn-info btn-sm"><i class="fa fa-refresh"></i></button>
								<button class="btn btn-danger btn-sm"><i class="fa fa-trash-o"></i></button>								
							</td>
						</tr>
					</tbody>
    </tbody>
  </table>
<%-- <div class="container">
	<table id="cart" class="table table-hover table-condensed">
    				<thead>
						<tr>
							<th style="width:50%">Product</th>
							<th style="width:10%">Price</th>
							<th style="width:8%">Quantity</th>
							<th style="width:22%" class="text-center">Subtotal</th>
							<th style="width:10%"></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td data-th="Product">
								<div class="row">
									<div class="col-sm-2 hidden-xs"><img src="http://placehold.it/100x100" alt="..." class="img-responsive"/></div>
									<div class="col-sm-10">
										<h4 class="nomargin">{{x.productname}}</h4>
										<p>{{x.productdescription}}</p>
									</div>
								</div>
							</td>
							<td data-th="Price">{{x.productprice}}</td>
							<td data-th="Quantity">
								<input type="number" class="form-control text-center" value="{{x.qty}}">
							</td>
							<td data-th="Subtotal" class="text-center">Rs. ${g}</td>
							<td class="actions" data-th="">
								<button class="btn btn-info btn-sm"><i class="fa fa-refresh"></i></button>
								<button class="btn btn-danger btn-sm"><i class="fa fa-trash-o"></i></button>								
							</td>
						</tr>
					</tbody>
					<tfoot>
						<tr class="visible-xs">
							<td class="text-center"><strong>Total 1.99</strong></td>
						</tr>
						<tr>
							<td><a href="#" class="btn btn-warning"><i class="fa fa-angle-left"></i> Continue Shopping</a></td>
							<td colspan="2" class="hidden-xs"></td>
							<td class="hidden-xs text-center"><strong>Total $1.99</strong></td>
							<td><a href="#" class="btn btn-success btn-block">Checkout <i class="fa fa-angle-right"></i></a></td>
						</tr>
					</tfoot>
				</table>
</div>
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td><h5>Subtotal</h5></td>
                        <td class="text-right"><h5><strong>Rs. ${g}</strong></h5></td>
                    </tr>
                    <tr>
                   
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td><h5>Estimated shipping</h5></td>
                        <td class="text-right"><h5><strong>Rs 60</strong></h5></td>
                    </tr>
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td><h3>Total</h3></td>
                        <td class="text-right"><h3><strong>{{Rs.${g}+60}}</strong></h3></td>
                    </tr>
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td>
                        <a href="/ECommerce/product" type="button" class="btn btn-default">
                            <span class="glyphicon glyphicon-shopping-cart"></span> Continue Shopping
                        </a></td>
                        <td>
                    <!--  <button id="checkout" type="submit" name="_eventId_page1">Checkout</button>
                           -->
                          <a href="/ECommerce/cart_checkout" type="button" class="btn btn-danger"> Proceed <span class="glyphicon glyphicon-play"></span></a> 
                           
                        </td>
                    </tr>
                </tbody>
              
            </table>
        </div>
    </div> --%> 
</div>
</body>
</html>
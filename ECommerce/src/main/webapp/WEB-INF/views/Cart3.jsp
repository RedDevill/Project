<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <%@page isELIgnored="false" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<c:url value="/resources/images" var="x"/>
<c:url value="/resources/bootstrap/css" var="a"/>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
 <link rel="stylesheet" href=${a}/style.css/>
<title>Cart</title>

<script >
console.log("inside controller js");
var app=angular.module('myApp',[]);
app.controller('cartCtrl1', ['$scope', function($scope) {
	$scope.pr=${p};
	$scope.x1=${g1};
	$scope.estimated=60;
	console.log("inside controller "+$scope.pr);

}]);
	  </script>
<!-- <style>
.container{
 padding-top: 100px;
}
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
	
} -->
</style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<br>
<br>
	<div class="row" >
	<div class="col-sm-12 col-md-10 col-md-offset-1" >
		<table id="cart" class="table table-hover table-condensed">
    				<thead>
                    <tr>
                        <th>Product</th>
                        <th>Quantity</th>
                        <th class="text-center">Price</th>
                        <th class="text-center">Total</th>
                        <th> </th>
                    </tr>
                </thead>
                <br>
					<tbody ng-app="myApp" ng-controller="cartCtrl1">
						<tr ng-repeat="p in pr" >
						<td class="col-sm-8 col-md-6" data-th="Product">

                        <div class="media">
                             <a class="thumbnail pull-left" href="#"> <img class="media-object" src="${x}/{{p.productid}}.jpg" alt="{{p.productName}}" style="width: 72px; height: 72px;"> </a>
                            <div class="media-body">
                               <h4 class="media-heading"><a href="#">{{p.productname}}</a></h4>
                             <!--    <h5 class="media-heading"> by <a href="#">{{x.brand}}</a></h5>  -->
                                <span>Status: </span><span class="text-success"><strong>In Stock</strong></span>
                            </div>
                        </div></td>
                        <td class="col-sm-1 col-md-1" style="text-align: center">
                        <input type="text" class="form-control" value="{{p.qty}}">
                        </td>
                      <td class="col-sm-1 col-md-1 text-center"><strong>Rs {{p.productprice}}</strong></td>
                        <td class="col-sm-1 col-md-1 text-center"><strong>{{p.productprice * p.qty| currency : 'Rs'}}</strong></td>
                        <td class="col-sm-1 col-md-1">
                        <button  href="removeproduct/{{p.productname}}" type="button" class="btn btn-danger">
                            <span class="glyphicon glyphicon-remove"></span> Remove
                        </button></td>
                    </tr>
						<%-- <tr class="visible-xs" >
							<td class="text-center"><strong>Rs. ${g}</strong></td><!-- gtotal() -->
						</tr> --%>
						
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
                        <td class="text-right"><h3><strong>{{x1+estimated}}</strong></h3></td>
                    </tr>
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td>
						<tr>
							<td><a href="product" class="btn btn-warning"><i class="fa fa-angle-left"></i> Continue Shopping</a></td>
							<td colspan="2" class="hidden-xs"></td>
							<td><a href="/ECommerce/cart_checkout" class="btn btn-success btn-danger">Checkout <i class="fa fa-angle-right"></i></a></td>
						</tr>
				</tbody>	
				</table>
</div>

</div>

 <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
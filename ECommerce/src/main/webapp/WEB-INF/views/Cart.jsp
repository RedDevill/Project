<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
   

<html lang="en">


  <head>
    <meta charset="utf-8">
    
    <title>myClub | Home</title>
    <meta name="description" content="This one page example has a fixed navbar and full page height sections. Each section is vertically centered on larger screens, and then stack responsively on smaller screens. Scrollspy is used to activate the current menu item. This layout also has a contact form example. Uses animate.css, FontAwesome, Google Fonts (Lato and Bitter) and Bootstrap." />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="generator" content="Codeply">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.5.0/angular.min.js"></script>
    <!-- <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script> -->
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" />
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" />
    <link href="//cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.1/animate.min.css" rel="stylesheet" />
	<c:url value="/resources/images" var="y"/>
	<c:url value="/resources/bootstrap/css1" var="a"/>
    <link rel="stylesheet" href="resources/bootstrap/css1/style.css" />
    <link rel="stylesheet" href="resources/bootstrap/css1/image.css" />
    <link rel="stylesheet" href="resources/bootstrap/css1/footer-distributed-with-address-and-phones.css" />
    <script>
     console.log("starting of angular");
      var app=angular.module('myApp',[]);
      app.controller('cartCtrl1', ['$scope', function($scope) {
      	$scope.pr=${p};
      	console.log("ending of angularjs");

  }]);
  </script>
   
  </head>
 
<body  ng-app="myApp" >
 
    
     
<jsp:include page="header.jsp"></jsp:include>
 
<div class="container" style="margin-top:10%" ng-controller="cartCtrl1">
products are

{{pr}}
    <div class="row">
        <div class="col-sm-12 col-md-10 col-md-offset-1" >
            <table class="table table-hover" ng-controller="cartCtrl1">
                <thead>
                    <tr>
                        <th>Product</th>
                        <th>Quantity</th>
                        <th class="text-center">Price</th>
                        <th class="text-center">Total</th>
                        <th> </th>
                    </tr>
                </thead>
               
                <tbody>
                <tr ng-repeat="x in products" >
							<td class="col-sm-8 col-md-6" data-th="Product">

                        <div class="media">
                             <a class="thumbnail pull-left" href="#"> <img class="media-object" src="${y}/{{x.productid}}.jpg" alt="{{x.productName}}" style="width: 72px; height: 72px;"> </a>
                            <div class="media-body">
                               <h4 class="media-heading"><a href="#">{{x.productname}}</a></h4>
                             <!--    <h5 class="media-heading"> by <a href="#">{{x.brand}}</a></h5>  -->
                                <span>Status: </span><span class="text-success"><strong>In Stock</strong></span>
                            </div>
                        </div></td>
                        <td class="col-sm-1 col-md-1" style="text-align: center">
                        <input type="text" class="form-control" value="{{x.qty}}">
                        </td>
                      <td class="col-sm-1 col-md-1 text-center"><strong>Rs {{x.productprice}}</strong></td>
                        <td class="col-sm-1 col-md-1 text-center"><strong>{{x.productprice * x.qty| currency : 'Rs'}}</strong></td>
                        <td class="col-sm-1 col-md-1">
                        <button  href="removeproduct/{{p.productname}}" type="button" class="btn btn-danger">
                            <span class="glyphicon glyphicon-remove"></span> Remove
                        </button></td>
                    </tr>
                   <!--  <tr>
                        <td class="col-md-6">
                        <div class="media">
                            <a class="thumbnail pull-left" href="#"> <img class="media-object" src="http://icons.iconarchive.com/icons/custom-icon-design/flatastic-2/72/product-icon.png" style="width: 72px; height: 72px;"> </a>
                            <div class="media-body">
                                <h4 class="media-heading"><a href="#">Product name</a></h4>
                                <h5 class="media-heading"> by <a href="#">Brand name</a></h5>
                                <span>Status: </span><span class="text-warning"><strong>Leaves warehouse in 2 - 3 weeks</strong></span>
                            </div>
                        </div></td>
                        <td class="col-md-1" style="text-align: center">
                        <input type="text" class="form-control" id= value="2">
                        </td>
                        <td class="col-md-1 text-center"><strong>$4.99</strong></td>
                        <td class="col-md-1 text-center"><strong>$9.98</strong></td>
                        <td class="col-md-1">
                        <button type="button" class="btn btn-danger">
                            <span class="glyphicon glyphicon-remove"></span> Remove
                        </button></td>
                    </tr> -->
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
    </div>
</div>
</form>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
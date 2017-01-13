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
   <!--  <link rel="stylesheet" href="/style.css" />
    <link rel="stylesheet" href="resources/bootstrap/css1/image.css" />
    <link rel="stylesheet" href="resources/bootstrap/css1/footer-distributed-with-address-and-phones.css" />
     -->
    
  </head>
 
<body>
<jsp:include page="header.jsp"></jsp:include>
<br>
<br>
  <div class="row responsive" style="margin-top:50px;">
   <div class="col-md-4 col-md-offset-1">
            <legend ><a  href="http://www.jquery2dotnet.com"><i style="color:#f44d3c" class="glyphicon glyphicon-globe"></i></a> Shipping Address </legend>
            <form action="save" method="post" class="form" role="form">
        <fieldset>

          <!-- Text input-->
          <div class="form-group responsive">
            <label class="col-sm-2 control-label" for="textinput">Line 1</label>
            <div class="col-sm-10">
              <input name="line1" type="text" placeholder="Address Line 1" class="form-control">
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Line 2</label>
            <div class="col-sm-10">
              <input name="line2" type="text" placeholder="Address Line 2" class="form-control">
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">City</label>
            <div class="col-sm-10">
              <input name="city" type="text" placeholder="City" class="form-control">
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">State</label>
            <div class="col-sm-4">
              <input name="state" type="text" placeholder="State" class="form-control">
            </div>

            <label class="col-sm-2 control-label" for="textinput">Postcode</label>
            <div class="col-sm-4">
              <input name="zipcode" type="text" placeholder="Post Code" class="form-control">
            </div>
          </div>



          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Country</label>
            <div class="col-sm-10">
              <input name="country" type="text" placeholder="Country" class="form-control">
            </div>
          </div>

          <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
              <div class="pull-right">
              <!-- <div class="form-actions">
					<input type="submit" name="_eventId_submitShippingAddress" value="Save" class="btn btn-md btn-danger"> Next <span class="glyphicon glyphicon-play"></span></a>
						<input type="submit" name="_eventId_cancel" class="btn btn-md btn-primary">
				</div> -->
                <button type="submit" class="btn btn-primary">Back</button>
               <input  type="submit" value="next" class="btn btn-danger"><span class="glyphicon glyphicon-play"></span></a> 
              </div>
            </div>
          </div>

        </fieldset>
      </form>
    </div><!-- /.col-lg-12 -->
</div><!-- /.row -->
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
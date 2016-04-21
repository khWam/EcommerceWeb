<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="Description" content="" />
<meta name="Keywords" content="" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- CSS file -->

<style type="text/css">
<%@ include file="css/ecommerceWeb2.css"%>
</style>
<!--  <link rel="stylesheet" type="text/css" href="./css/ecommerceWeb.css">   -->

<!--  links and sources for bootstrap and jquery libraries is referenced as a CDN request-->
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-2.2.3.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>


<!--  <link rel="shortcut icon" href="/resources/hype/img/logo.png?1460326972" type="image/png">
    <link rel="icon" href="/resources/hype/img/logo.png?1460326972" type="image/png"> -->
<!--   <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet' type='text/css'> -->

<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">
<!-- <link rel="stylesheet" href="//d2pm12cz12gs8x.cloudfront.net/store-hype-543eddf2617d2/themes/hype/resources/css/combined.min.css?1426718990"> -->
<link rel="stylesheet"
	href="//d2pm12cz12gs8x.cloudfront.net/store-hype-543eddf2617d2/themes/hype/resources/css/combined.min.css?1426718990">
<link rel="stylesheet"
	href="//d2pm12cz12gs8x.cloudfront.net/store-hype-543eddf2617d2/themes/hype/resources/css/custom.css?1426718990">


<title>Checkout</title>
</head>
<body>

	<nav class="navbar navbar-default" role="navigation">
	<div class="nav-content">

		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<a class="navbar-brand" id="logo-mob"
				href="http://localhost:8080/EcommerceWeb/index.html">Market O
				Zone</a>
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
		</div>


		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav text-center">
				<li><a href="http://localhost:8080/EcommerceWeb/category.jsp">THE
						STORE</a></li>
				<li><a href="//hype.lemonstand.com/about">ABOUT</a></li>
				<li><a class="navbar-brand" id="logo"
					href="http://localhost:8080/EcommerceWeb/index.html">Market O
						Zone</a></li>
				<li><a href="//hype.lemonstand.com/login">LOGIN</a></li>
				<li id="normal-cart"><a id="normal-carts"
					href="http://localhost:8080/EcommerceWeb/cart.jsp"><span class="hidden-xs"
						id="navbar-totals">${listProductCart.size()} ITEMS</span></a></li>
				<li id="mobile-cart"><a href="http://localhost:8080/EcommerceWeb/cart.jsp">CART</a>
				</li>
				<li id="mobile-cart"><a
					href="http://localhost:8080/EcommerceWeb/cart.jsp">CHECKOUT</a></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid --> </nav>
	    <div class="wrapper">
    	<div class="row" id="checkout-row">
	<div class="content">
			      <div id="checkout-page">      <div class="row checkout-row">

<div class="col-md-9">
  

<div class="checkout-tab" id="shop-address">
  <div class="checkout-tab-bar row">
    <div class="col-md-6 columns">
      <p>
                  <i class="fa fa-circle-thin"></i>
          Customer Information 
                
      </p>
    </div>
    <div class="col-md-6 columns text-right">
              <span class="status">In Progress</span>
          </div>
  </div>
  <div class="checkout-content checkout-open">

<div id="address-form" class="row" >

<form  class="custom" data-validation-message="" method="POST" action="CheckoutControleur">
  <div class="col-md-12" style="padding-bottom: 0;">
    <div class="col-md-12 col-sm-12 col-lg-6">

      <p id="title-p-d">
      
      Billing Address
        <span class="fa-stack" style="visibility:hidden;">
              <i class="fa fa-square-o fa-stack-2x"></i>
              <i class="fa fa-check fa-stack-1x"></i>
            </span>
      </p>
      
      <div id="billing-info" class="row">
        <div class="col-sm-6 form-group">
          <label for="billing_firstName">First Name</label>
          <input data-mirror type="text" class="form-control" name="billingInfo[firstName]" id="billing_firstName" value="" placeholder="Jonathan"/>
          <span class="error small text-danger"></span>
          
        </div>
        <div class="col-sm-6 form-group">
          <label for="billing_lastName">Last Name</label>
          <input data-mirror type="text" class="form-control" name="billingInfo[lastName]" id="billing_lastName" value="" placeholder="Doe"/>
          <span class="error small text-danger"></span>
        </div>
        <div class="col-sm-6 form-group">
          <label for="billing_email">E-mail Address</label>
          <input type="email" class="form-control" name="billingInfo[email]" id="billing_email" value="" placeholder="example@email.com"/>
          <span class="error small text-danger"></span>
        </div>
        <div class="col-sm-6 form-group">
          <label for="billing_phone">Phone Number</label>
          <input data-mirror type="text" class="form-control" name="billingInfo[phone]" id="billing_phone" value="" placeholder="(012) 345-6789"/>
          <span class="error small text-danger"></span>
        </div>
        <div class="col-sm-12 form-group">
          <label for="billing_address">Address</label>
          <input data-mirror type="text" class="form-control" id="billing_address" name="billingInfo[streetAddressLine1]" value="" placeholder="12 Example Adress"/>
          <span class="error small text-danger"></span>
        </div>
        <div class="col-sm-6 form-group">
          <label for="billing_city">City</label>
          <input data-mirror type="text" class="form-control" name="billingInfo[city]" id="billing_city" value="" placeholder="Vancouver"/>
          <span class="error small text-danger"></span>
        </div>
        <div class="col-sm-6 form-group">
          <label for="billing_postalCode">Zip Code</label>
          <input data-mirror type="text" class="form-control" id="billing_postalCode" name="billingInfo[postalCode]" value="" placeholder="75008"/>
          <span class="error small text-danger"></span>
        </div>
        
        

      </div>
    </div>
  
    <div class="col-sm-12">
<!--                   <a href="#top" class="btn btn-important pull-right data-ajax-url" data-ajax-handler="shop:checkout" data-ajax-update="#checkout-totals=shop-checkout-totals, #checkout-page=shop-checkout" data-hash="step-2">Validate</a>
 -->                  <input type= "submit" class="btn btn-important pull-right"  name="Submit" value= "Validate"/>
                    
                    <!--   <input type="hidden" name="step" value="billing_info,shipping_info">
      <input type="hidden" name="nextStep" value="shipping_method"/>
     -->
        </div>
  </div>
  </form>
</div>
</div>
</div>




<div class="col-md-3">
<div class="checkout-tab" id="shop-cart">
  <div class="checkout-tab-bar row">
    <div class="col-md-6 columns">
      <p>Items</p>
    </div>
  </div>
<c:set var="TotalPrice" value="0" scope="page" />
<c:forEach var="product" items="${sessionScope.listProductCart}">
<c:set var="TotalPrice" value="${TotalPrice + (quantiteAcheter * product.value.price)}" scope="page"/>
 <!-- SHIPPING METHOD -->


<div class="checkout-tab" id="shop-ship">
  <div class="checkout-tab-bar row">
    <div class="col-md-6 columns">
     
    </div>
    <div class="col-md-6 columns text-right">
          </div>
  </div>

  <div class="checkout-content">
<div id="shop-checkout-shipping-method" class="col-md-12 row">
<form  class="custom" method="post" action="/checkout">

    <div class="col-md-12">
    <p id="title-p-d">Choose a Shipping Method</p>

          <p>Please fill out billing/shipping info</p>
     <!-- end checkout step -->

        </div>
</form>
</div>
</div>
</div> <div class="checkout-content checkout-open">
  	<div class="row" id="cart-row">

			<div class="col-sm-2" id="cart-img" style="padding:0;">
				<img src="//d2pm12cz12gs8x.cloudfront.net/store-hype-543eddf2617d2/uploaded/thumbnails/4a_autoxauto-jpg-keep-ratio.png?1416257987" alt="3 Pasta&#039;s">
			</div>
			<div class="col-sm-10" style="padding-right:0px;">
				<a href="/product/3-pasta-s">${product.key}</a><br>
				                    <p class="h6">${product.value.description}</p>
                 
        <p class="small">Quantity: <span class="pull-right">${quantiteAcheter} x ${product.value.getPrice()}</span></p>
        <p class="small">Total: <span class="pull-right">${quantiteAcheter*product.value.getPrice()}</span></p>
			</div>
		</div>
</c:forEach>
  <hr>
  <span id="checkout-totals"><p>Subtotal: <span class="pull-right">$${TotalPrice}</span></p>
<p>Tax: <span class="pull-right">$${TotalPrice*0.05}</span></p>
<br>
<p class="subtotal"><strong>Total:</strong>  <span class="pull-right"><strong>$${TotalPrice*(1+0.05)}</strong></span></p></span>
  </div>
</div>
</div>


</div></div>
	    		</div>
	</div>	
	
</div> 
    </div>

	<div class="main-footer">
		<div class="row">
			<div class="col-md-12">
				<div class="col-md-3 foot-box">
					<h2>Market O Zone</h2>
					<p>
						We are open all day <br> 6 rue de Arcade, 75008 Paris
					</p>
				</div>
				<div class="col-md-3 foot-box">
					<h2>Contact us</h2>
					<p>
						Market O Zone <br> P: 829-192-9382 <br> Mail:
						support@marketozone.com
					</p>
				</div>
				<!--   <ul class="list-unstyled col-md-6 text-right">
                    <h2>Share our story</h2>
                    <a href="http://facebook.com/lemonstand"><li><i class="fa fa-facebook fa-2x"></i></li></a>
                    <a href="http://instagram.com"><li><i class="fa fa-instagram fa-2x"></i></li></a>
                    <a href="http://twitter.com/D_Hanul_Park"><li><i class="fa fa-twitter fa-2x"></i></li></a>
                    <a href="http://tumblr.com"><li><i class="fa fa-tumblr fa-2x"></i></li></a>
                </ul> -->
			</div>
		</div>
	</div>
	<script
		src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script
		src="//d2pm12cz12gs8x.cloudfront.net/store-hype-543eddf2617d2/themes/hype/resources/js/jquery-migrate-1.2.1.js?1426718990"></script>
	<script
		src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
	<script
		src="//d2pm12cz12gs8x.cloudfront.net/store-hype-543eddf2617d2/themes/hype/resources/js/jquery.creditCardValidator.js?1426718990"></script>
	<script src="/cms/core.js"></script>
	<script
		src="//d2pm12cz12gs8x.cloudfront.net/store-hype-543eddf2617d2/themes/hype/resources/js/main.js?1426718990"></script>


</body>
</html>
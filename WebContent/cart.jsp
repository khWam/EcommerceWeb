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


<title>Shop</title>
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
					href="//hype.lemonstand.com/checkout-start">CHECKOUT</a></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid --> </nav>
	 <div class="wrapper">
    	<div class="row content" id="cartt">
  <form  class="custom" method="post" action="/cart">
    <div id="cart-content"><div class="row">
    

<p id="title-p-d">SHOPPING CART</p>
<div class="col-md-12">
    
    <div class="items-holder">
        
        	<div class="row content" id="cart-items">
		<div class="col-sm-6">
			Product
		</div>
		<div class="col-sm-3">
			Quantity
		</div>
		<div class="col-sm-3">
			Item Total
		</div>
	</div>



<c:forEach var="product" items="${sessionScope.listProductCart}">
	<div class="row" id="cart-row">

			<div class="col-sm-2" id="cart-img">
				<img src="//d2pm12cz12gs8x.cloudfront.net/store-hype-543eddf2617d2/uploaded/thumbnails/4a_autoxauto-jpg-keep-ratio.png?1416257987" alt="3 Pasta&#039;s">
			</div>
		<div class="row" id="align-middle">
			<div class="col-sm-4">
				<a href="/product/3-pasta-s">${product.key}</a>
        			</div>
			<div class="col-sm-2">
									<input type="text" id="quantity" name="item_quantity[57160c4917c17]" value="${product.value.getQuantity()}">
							</div>
			<div class="col-sm-3 col-xs-12" id="item-middle">
				<p>
					<span class="pull-left">$${product.value.getPrice()}</span>
											<a class="col-sm-3" id="item-close" href="#close" 
						data-ajax-handler="shop:cart" 
												data-ajax-update="#cart-content=shop-cart-content, #mini-cart=shop-minicart, #navbar-totals=shop-minicart-totals"
						data-ajax-extra-fields="delete_item='57160c4917c17'"><i class="fa fa-times" id="remove-cart-item"></i></a>
									</p>

				
			</div>
		</div>
	</div>
	</c:forEach>

    </div>

</div>

<div class="col-md-3 row">
    <p>Order Summary</p>
    <ul class="price-list list-group">
                        <li class="list-group-item important">Total: $20.00</li>
    </ul>
    <div class="col-xs-12 form-group" id="coupon">
        <input type="text" class="form-control" id="coupon-code" name="coupon" placeholder="Coupon Code" value="" />
    </div>
    <a class="btn btn-default col-xs-12 btn-lg solid" href="#" data-ajax-handler="shop:cart" data-ajax-update="#cart-content=shop-cart-content, #mini-cart=shop-minicart, #navbar-totals=shop-minicart-totals">Update Cart <i class="fa fa-refresh"></i></a>
        <a class="col-xs-12 btn btn-important solid btn-lg" href="//hype.lemonstand.com/checkout-start">Checkout</a>
    </div>

</div></div>
  </form>    
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
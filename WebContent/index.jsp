<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    

	<!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <title>Market O Zone</title>
    
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	  <meta name="Description" content=""/>
	  <meta name="Keywords" content=""/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- CSS file -->

<style type="text/css">
<%@ include file ="css/ecommerceWeb2.css"%>
</style>
  <link rel="stylesheet" type="text/css" href="css/ecommerceWeb2.css">

    
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <!-- <link rel="stylesheet" href="//d2pm12cz12gs8x.cloudfront.net/store-hype-543eddf2617d2/themes/hype/resources/css/combined.min.css?1426718990"> -->
    <link rel="stylesheet" href="//d2pm12cz12gs8x.cloudfront.net/store-hype-543eddf2617d2/themes/hype/resources/css/combined.min.css?1426718990">
    <link rel="stylesheet" href="//d2pm12cz12gs8x.cloudfront.net/store-hype-543eddf2617d2/themes/hype/resources/css/custom.css?1426718990">


</head>
<body style="padding-top: 0;">
	<nav class="navbar navbar-default" role="navigation">
		<div class="nav-content">

			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<a class="navbar-brand" id="logo-mob"
					href="http://localhost:8080/EcommerceWeb/index.jsp">Market O
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
						href="http://localhost:8080/EcommerceWeb/index.jsp">Market O
							Zone</a></li>
					<li><a href="//hype.lemonstand.com/login">LOGIN</a></li>
					<li id="normal-cart"><a id="normal-carts"
						href="http://localhost:8080/EcommerceWeb/cart.jsp"><span class="hidden-xs"
							id="navbar-totals">${listProductCart.size()} ITEMS</span></a></li>
					<li id="mobile-cart"><a href="http://localhost:8080/EcommerceWeb/cart.jsp">CART</a>
					</li>
					<li id="mobile-cart"><a
						href="http://localhost:8080/EcommerceWeb/checkout.jsp">CHECKOUT</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>
	<div id="intro-image">
		<div class="intro-content text-center row">
			<div class="col-md-12">A Book is A Friend!</div>
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
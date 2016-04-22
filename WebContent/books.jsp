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


<title>Category - Books</title>
</head>
<body>

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
	<!-- /.container-fluid --> </nav>
	<div class="wrapper">
		<div class="jumbotron">
			<c:forEach var="product" items="${listProduct}">
				<form class="custom" action="CartControleur" method="post"
					action="/product/3-pasta-s">
					<div class="row" class="product">
						<div class="product-page content " id="product-page">
							<div class="col-md-9">
								<h2>${product.key}</h2>
								<br>
								<p>
								<p>${product.value.description}</p>
								</p>

								<!-- <img
								src="//d2pm12cz12gs8x.cloudfront.net/store-hype-543eddf2617d2/uploaded/thumbnails/4a_750x750-jpg-crop.png?1414098515"
								alt="3 Pasta&#039;s"> <img
								src="//d2pm12cz12gs8x.cloudfront.net/store-hype-543eddf2617d2/uploaded/thumbnails/4b_750x750-jpg-crop.png?1414098515"
								alt="3 Pasta&#039;s"> <img
								src="//d2pm12cz12gs8x.cloudfront.net/store-hype-543eddf2617d2/uploaded/thumbnails/4c_750x750-jpg-crop.png?1414098516"
								alt="3 Pasta&#039;s"> -->
							</div>


							<!-- PRODUCT DETAIL -->
							<div class="product-detail col-md-3">

								<div class="col-md-12">
									<!-- 	<small class="previous-price">$13.00</small> -->

									<h3>$${product.value.getPrice()}</h3>

									<div class="product-attributes">
										<table class="table table-bordered">
											<tr>
												<th>Stock</th>
												<td>${product.value.getQuantity()}</td>
											</tr>
										</table>
									</div>



									<!-- 	<div class="product-options">
									<label class="title" for="option-0">Portion</label><br> <select
										id="option-0" name="options[3]" class="select-option"
										data-ajax-handler="shop:product"
										data-ajax-update="#product-page=shop-product">
										<option value="options-1-eceaa402-80ca-49a0">1</option>
										<option value="options-1-52fb6c2d-44bd-4954">2</option>
										<option value="options-1-e981cf35-f299-4076">3</option>
									</select>
								</div>
								<div class="product-options">
									<label class="title" for="option-1">Pasta Option</label><br>
									<select id="option-1" name="options[4]" class="select-option"
										data-ajax-handler="shop:product"
										data-ajax-update="#product-page=shop-product">
										<option value="options-2-2b30ea43-2e92-46f1">Normal</option>
										<option value="options-2-b3a8e9cf-dc42-4379">Gluten
											Free</option>
										<option value="options-2-03eb2c69-d8b1-4046">Wholewheat</option>
									</select>
								</div>
 -->


									<input type="hidden" name="productId" value="8" />
									<div class="add-cart-holder form-group">

										<div class="quantity-selector">
											<label class="title">Quantity</label> <input
												class="form-control quantity" type="text" value="1"
												name="quantitAcheter" id ="quantit" />
										</div>
									</div>
                                     
                                     <input type="hidden" name="productNameKey" value="${product.key}" />
                                    <input type="submit" class="btn btn-important btn-add-cart" name="Submit" value="Add to Cart"><br><br>
									<%-- <a id="quantiteAjour" class="btn btn-important btn-add-cart" href="CartControleur?productNameKey=${product.key}&quantitAcheter=${document.getElementById('quantit').value}"								d	
										data-ajax-handler="shop:onAddToCart"
										data-ajax-update="#mini-cart=shop-minicart, #product-page=shop-product, #navbar-totals=shop-minicart-totals">Add
										to Cart </a><br> <br> --%>
								</div>


							</div>
						</div>
					</div>
				</form>
			</c:forEach>
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
		<script type="text/css"> <%@ include file="js/ecommerceWeb.js"%> </script>


</body>
</html>
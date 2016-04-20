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
    	<div class="row" id="checkout-row">
	<div class="content">
			      <div id="checkout-page">      <div class="row checkout-row">

<div class="col-md-9">
  

<div class="checkout-tab" id="shop-address">
  <div class="checkout-tab-bar row">
    <div class="col-md-6 columns">
      <p>
                  <i class="fa fa-circle-thin"></i>
          Step 1: Billing/Shipping Address 
                
      </p>
    </div>
    <div class="col-md-6 columns text-right">
              <span class="status">In Progress</span>
          </div>
  </div>
  <div class="checkout-content checkout-open">

<div id="address-form" class="row" >

<form  class="custom" data-validation-message="" method="post" action="/checkout">
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
          <input data-mirror type="text" class="form-control" id="billing_address" name="billingInfo[streetAddressLine1]" value="" placeholder="123 Example Dr"/>
          <span class="error small text-danger"></span>
        </div>
        <div class="col-sm-6 form-group">
          <label for="billing_city">City</label>
          <input data-mirror type="text" class="form-control" name="billingInfo[city]" id="billing_city" value="" placeholder="Vancouver"/>
          <span class="error small text-danger"></span>
        </div>
        <div class="col-sm-6 form-group">
          <label for="billing_postalCode">Zip Code</label>
          <input data-mirror type="text" class="form-control" id="billing_postalCode" name="billingInfo[postalCode]" value="" placeholder="A1B2C3"/>
          <span class="error small text-danger"></span>
        </div>
        <div class="col-sm-6 form-group">
          <label for="billing_country" class="hide">Country</label>
          <!-- 
            The state selector updates automatically when the country changes. 
            See app.js for the implementation details. 
            -->        
            <select data-mirror id="billing_country" class="chzn-select form-control" name="billingInfo[countryId]" data-state-selector="#billing_state" data-current-state="">
                        <option  value="24">Afghanistan</option>
                        <option  value="25">Aland Islands ﻿ Åland Islands</option>
                        <option  value="26">Albania</option>
                        <option  value="27">Algeria</option>
                        <option  value="28">American Samoa</option>
                        <option  value="29">Andorra</option>
                        <option  value="30">Angola</option>
                        <option  value="31">Anguilla</option>
                        <option  value="32">Antarctica</option>
                        <option  value="33">Antigua and Barbuda</option>
                        <option  value="34">Argentina</option>
                        <option  value="35">Armenia</option>
                        <option  value="36">Aruba</option>
                        <option  value="3">Australia</option>
                        <option  value="11">Austria</option>
                        <option  value="37">Azerbaijan</option>
                        <option  value="38">Bahamas</option>
                        <option  value="39">Bahrain</option>
                        <option  value="40">Bangladesh</option>
                        <option  value="41">Barbados</option>
                        <option  value="42">Belarus</option>
                        <option  value="12">Belgium</option>
                        <option  value="43">Belize</option>
                        <option  value="44">Benin</option>
                        <option  value="45">Bermuda</option>
                        <option  value="46">Bhutan</option>
                        <option  value="47">Bolivia, Plurinational State of</option>
                        <option  value="48">Bosnia and Herzegovina</option>
                        <option  value="49">Botswana</option>
                        <option  value="50">Bouvet Island</option>
                        <option  value="51">Brazil</option>
                        <option  value="52">British Indian Ocean Territory</option>
                        <option  value="53">Brunei Darussalam</option>
                        <option  value="54">Bulgaria</option>
                        <option  value="55">Burkina Faso</option>
                        <option  value="56">Burundi</option>
                        <option  value="57">Cambodia</option>
                        <option  value="58">Cameroon</option>
                        <option  value="2">Canada</option>
                        <option  value="59">Cape Verde</option>
                        <option  value="60">Cayman Islands</option>
                        <option  value="61">Central African Republic</option>
                        <option  value="62">Chad</option>
                        <option  value="63">Chile</option>
                        <option  value="64">China</option>
                        <option  value="65">Christmas Island</option>
                        <option  value="66">Cocos (Keeling) Islands</option>
                        <option  value="67">Colombia</option>
                        <option  value="68">Comoros</option>
                        <option  value="69">Congo</option>
                        <option  value="70">Congo, the Democratic Republic of the</option>
                        <option  value="71">Cook Islands</option>
                        <option  value="72">Costa Rica</option>
                        <option  value="73">Cote d&#039;Ivoire</option>
                        <option  value="74">Croatia</option>
                        <option  value="75">Cuba</option>
                        <option  value="76">Cyprus</option>
                        <option  value="14">Czech Republic</option>
                        <option  value="15">Denmark</option>
                        <option  value="77">Djibouti</option>
                        <option  value="78">Dominica</option>
                        <option  value="79">Dominican Republic</option>
                        <option  value="80">Ecuador</option>
                        <option  value="81">Egypt</option>
                        <option  value="82">El Salvador</option>
                        <option  value="83">Equatorial Guinea</option>
                        <option  value="84">Eritrea</option>
                        <option  value="85">Estonia</option>
                        <option  value="86">Ethiopia</option>
                        <option  value="87">Falkland Islands (Malvinas)</option>
                        <option  value="88">Faroe Islands</option>
                        <option  value="89">Fiji</option>
                        <option  value="13">Finland</option>
                        <option  value="4">France</option>
                        <option  value="90">French Guiana</option>
                        <option  value="91">French Polynesia</option>
                        <option  value="92">French Southern Territories</option>
                        <option  value="93">Gabon</option>
                        <option  value="94">Gambia</option>
                        <option  value="95">Georgia</option>
                        <option  value="5">Germany</option>
                        <option  value="96">Ghana</option>
                        <option  value="97">Gibraltar</option>
                        <option  value="98">Greece</option>
                        <option  value="99">Greenland</option>
                        <option  value="100">Grenada</option>
                        <option  value="101">Guadeloupe</option>
                        <option  value="102">Guam</option>
                        <option  value="103">Guatemala</option>
                        <option  value="104">Guernsey</option>
                        <option  value="105">Guinea</option>
                        <option  value="106">Guinea-Bissau</option>
                        <option  value="107">Guyana</option>
                        <option  value="108">Haiti</option>
                        <option  value="109">Heard Island and McDonald Islands</option>
                        <option  value="110">Holy See (Vatican City State)</option>
                        <option  value="111">Honduras</option>
                        <option  value="112">Hong Kong</option>
                        <option  value="113">Hungary</option>
                        <option  value="6">Iceland</option>
                        <option  value="114">India</option>
                        <option  value="115">Indonesia</option>
                        <option  value="116">Iran, Islamic Republic of</option>
                        <option  value="117">Iraq</option>
                        <option  value="7">Ireland</option>
                        <option  value="23">Isle of Man</option>
                        <option  value="118">Israel</option>
                        <option  value="8">Italy</option>
                        <option  value="119">Jamaica</option>
                        <option  value="120">Japan</option>
                        <option  value="121">Jersey</option>
                        <option  value="122">Jordan</option>
                        <option  value="123">Kazakhstan</option>
                        <option  value="124">Kenya</option>
                        <option  value="125">Kiribati</option>
                        <option  value="126">Korea, Democratic People&#039;s Republic of</option>
                        <option  value="127">Korea, Republic of</option>
                        <option  value="128">Kuwait</option>
                        <option  value="129">Kyrgyzstan</option>
                        <option  value="130">Lao People&#039;s Democratic Republic</option>
                        <option  value="131">Latvia</option>
                        <option  value="132">Lebanon</option>
                        <option  value="133">Lesotho</option>
                        <option  value="134">Liberia</option>
                        <option  value="135">Libyan Arab Jamahiriya</option>
                        <option  value="136">Liechtenstein</option>
                        <option  value="137">Lithuania</option>
                        <option  value="138">Luxembourg</option>
                        <option  value="139">Macao</option>
                        <option  value="140">Macedonia</option>
                        <option  value="141">Madagascar</option>
                        <option  value="142">Malawi</option>
                        <option  value="143">Malaysia</option>
                        <option  value="144">Maldives</option>
                        <option  value="145">Mali</option>
                        <option  value="146">Malta</option>
                        <option  value="147">Marshall Islands</option>
                        <option  value="148">Martinique</option>
                        <option  value="149">Mauritania</option>
                        <option  value="150">Mauritius</option>
                        <option  value="151">Mayotte</option>
                        <option  value="152">Mexico</option>
                        <option  value="153">Micronesia, Federated States of</option>
                        <option  value="154">Moldova, Republic of</option>
                        <option  value="155">Monaco</option>
                        <option  value="156">Mongolia</option>
                        <option  value="157">Montenegro</option>
                        <option  value="158">Montserrat</option>
                        <option  value="159">Morocco</option>
                        <option  value="160">Mozambique</option>
                        <option  value="161">Myanmar</option>
                        <option  value="162">Namibia</option>
                        <option  value="163">Nauru</option>
                        <option  value="164">Nepal</option>
                        <option  value="22">Netherlands</option>
                        <option  value="165">Netherlands Antilles</option>
                        <option  value="166">New Caledonia</option>
                        <option  value="19">New Zealand</option>
                        <option  value="167">Nicaragua</option>
                        <option  value="168">Niger</option>
                        <option  value="169">Nigeria</option>
                        <option  value="170">Niue</option>
                        <option  value="171">Norfolk Island</option>
                        <option  value="172">Northern Mariana Islands</option>
                        <option  value="16">Norway</option>
                        <option  value="173">Oman</option>
                        <option  value="174">Pakistan</option>
                        <option  value="175">Palau</option>
                        <option  value="176">Palestinian Territory, Occupied</option>
                        <option  value="177">Panama</option>
                        <option  value="178">Papua New Guinea</option>
                        <option  value="179">Paraguay</option>
                        <option  value="180">Peru</option>
                        <option  value="181">Philippines</option>
                        <option  value="182">Pitcairn</option>
                        <option  value="183">Poland</option>
                        <option  value="21">Portugal</option>
                        <option  value="184">Puerto Rico</option>
                        <option  value="185">Qatar</option>
                        <option  value="186">Reunion</option>
                        <option  value="187">Romania</option>
                        <option  value="20">Russian Federation</option>
                        <option  value="188">Rwanda</option>
                        <option  value="189">Saint Barthélemy</option>
                        <option  value="190">Saint Helena</option>
                        <option  value="191">Saint Kitts and Nevis</option>
                        <option  value="192">Saint Lucia</option>
                        <option  value="193">Saint Martin (French part)</option>
                        <option  value="194">Saint Pierre and Miquelon</option>
                        <option  value="195">Saint Vincent and the Grenadines</option>
                        <option  value="196">Samoa</option>
                        <option  value="197">San Marino</option>
                        <option  value="198">Sao Tome and Principe</option>
                        <option  value="199">Saudi Arabia</option>
                        <option  value="200">Senegal</option>
                        <option  value="201">Serbia</option>
                        <option  value="202">Seychelles</option>
                        <option  value="203">Sierra Leone</option>
                        <option  value="204">Singapore</option>
                        <option  value="205">Slovakia</option>
                        <option  value="206">Slovenia</option>
                        <option  value="207">Solomon Islands</option>
                        <option  value="208">Somalia</option>
                        <option  value="209">South Africa</option>
                        <option  value="210">South Georgia and the South Sandwich Islands</option>
                        <option  value="9">Spain</option>
                        <option  value="211">Sri Lanka</option>
                        <option  value="212">Sudan</option>
                        <option  value="213">Suriname</option>
                        <option  value="214">Svalbard and Jan Mayen</option>
                        <option  value="215">Swaziland</option>
                        <option  value="10">Sweden</option>
                        <option  value="18">Switzerland</option>
                        <option  value="216">Syrian Arab Republic</option>
                        <option  value="217">Taiwan, Province of China</option>
                        <option  value="218">Tajikistan</option>
                        <option  value="219">Tanzania, United Republic of</option>
                        <option  value="220">Thailand</option>
                        <option  value="221">Timor-Leste</option>
                        <option  value="222">Togo</option>
                        <option  value="223">Tokelau</option>
                        <option  value="224">Tonga</option>
                        <option  value="225">Trinidad and Tobago</option>
                        <option  value="226">Tunisia</option>
                        <option  value="227">Turkey</option>
                        <option  value="228">Turkmenistan</option>
                        <option  value="229">Turks and Caicos Islands</option>
                        <option  value="230">Tuvalu</option>
                        <option  value="231">Uganda</option>
                        <option  value="232">Ukraine</option>
                        <option  value="233">United Arab Emirates</option>
                        <option  value="17">United Kingdom</option>
                        <option  value="1">United States</option>
                        <option  value="234">United States Minor Outlying Islands</option>
                        <option  value="235">Uruguay</option>
                        <option  value="236">Uzbekistan</option>
                        <option  value="237">Vanuatu</option>
                        <option  value="238">Venezuela, Bolivarian Republic of</option>
                        <option  value="239">Viet Nam</option>
                        <option  value="240">Virgin Islands, British</option>
                        <option  value="241">Virgin Islands, U.S.</option>
                        <option  value="242">Wallis and Futuna</option>
                        <option  value="243">Western Sahara</option>
                        <option  value="244">Yemen</option>
                        <option  value="245">Zambia</option>
                        <option  value="246">Zimbabwe</option>
                        </select>
          <span class="error small text-danger"></span>
        </div>
        <div class="col-sm-6 form-group">
          <label for="billing_state" class="hide">State</label>
            <select data-mirror id="billing_state" class="chzn-select form-control" name="billingInfo[stateId]" data-ajax-refresh> 
                <option selected value="">- no states -</option>

            </select>
          <span class="error small text-danger"></span>
        </div> 

      </div>
    </div>
  
    <div class="col-md-12 col-sm-12 col-lg-6" id="mobile-shipping">
      <p id="title-p-d">Shipping Address | 
          <a data-toggle-mirror="on" class="btn-form-mirror">
            <span class="fa-stack">
              <i class="fa fa-square-o fa-stack-2x" style="visibility:visible"></i>
              <i class="fa fa-check fa-stack-1x" style="visibility:visible" id="check-box"></i>
            </span>
            Same as Billing Address
          </a>
      </p>


      <div id="shipping-info" class="row">
        <div class="col-sm-6 form-group">
          <label for="shipping_firstName">First Name</label>
          <input  data-mirror type="text" class="form-control disabled" name="shippingInfo[firstName]" id="shipping_firstName" value="" placeholder="First Name"/>
          <span class="error small text-danger"></span>
        </div>
        <div class="col-sm-6 form-group">
          <label for="shipping_lastName">Last Name</label>
          <input data-mirror type="text" class="form-control disabled" name="shippingInfo[lastName]" id="shipping_lastName" value="" placeholder="Last Name"/>
          <span class="error small text-danger"></span>
        </div>
        <div class="col-sm-6 form-group">
          <label for="shipping_phone">Phone Number</label>
          <input data-mirror type="text" class="form-control disabled" name="shippingInfo[phone]" id="shipping_phone" value="" placeholder="(012) 345-6789"/>
          <span class="error small text-danger"></span>
        </div>
        <div class="col-sm-12 form-group">
          <label for="shipping_address">Address</label>
          <input data-mirror type="text" class="form-control disabled" name="shippingInfo[streetAddressLine1]" id="shipping_address"  value="" placeholder="Address"/>
          <span class="error small text-danger"></span>
        </div>
        <div class="col-sm-6 form-group">
          <label for="shipping_city">City</label>
          <input data-mirror type="text" class="form-control disabled" name="shippingInfo[city]" id="shipping_city" value="" placeholder="City"/>
          <span class="error small text-danger"></span>
        </div>
        <div class="col-sm-6 form-group">
          <label for="shipping_postalCode">Zip Code</label>
          <input data-mirror type="text" class="form-control disabled" name="shippingInfo[postalCode]" id="shipping_postalCode" value="" placeholder="Zip Code"/>
          <span class="error small text-danger"></span>
        </div>
        <div class="col-sm-6 form-group">
          <label for="shipping_country" class="hide">Country</label>
            <select data-mirror id="shipping_country" class="chzn-select form-control disabled" name="shippingInfo[countryId]" data-state-selector="#shipping_state" data-current-state="" >
                        <option  value="24">Afghanistan</option>
                        <option  value="25">Aland Islands ﻿ Åland Islands</option>
                        <option  value="26">Albania</option>
                        <option  value="27">Algeria</option>
                        <option  value="28">American Samoa</option>
                        <option  value="29">Andorra</option>
                        <option  value="30">Angola</option>
                        <option  value="31">Anguilla</option>
                        <option  value="32">Antarctica</option>
                        <option  value="33">Antigua and Barbuda</option>
                        <option  value="34">Argentina</option>
                        <option  value="35">Armenia</option>
                        <option  value="36">Aruba</option>
                        <option  value="3">Australia</option>
                        <option  value="11">Austria</option>
                        <option  value="37">Azerbaijan</option>
                        <option  value="38">Bahamas</option>
                        <option  value="39">Bahrain</option>
                        <option  value="40">Bangladesh</option>
                        <option  value="41">Barbados</option>
                        <option  value="42">Belarus</option>
                        <option  value="12">Belgium</option>
                        <option  value="43">Belize</option>
                        <option  value="44">Benin</option>
                        <option  value="45">Bermuda</option>
                        <option  value="46">Bhutan</option>
                        <option  value="47">Bolivia, Plurinational State of</option>
                        <option  value="48">Bosnia and Herzegovina</option>
                        <option  value="49">Botswana</option>
                        <option  value="50">Bouvet Island</option>
                        <option  value="51">Brazil</option>
                        <option  value="52">British Indian Ocean Territory</option>
                        <option  value="53">Brunei Darussalam</option>
                        <option  value="54">Bulgaria</option>
                        <option  value="55">Burkina Faso</option>
                        <option  value="56">Burundi</option>
                        <option  value="57">Cambodia</option>
                        <option  value="58">Cameroon</option>
                        <option  value="2">Canada</option>
                        <option  value="59">Cape Verde</option>
                        <option  value="60">Cayman Islands</option>
                        <option  value="61">Central African Republic</option>
                        <option  value="62">Chad</option>
                        <option  value="63">Chile</option>
                        <option  value="64">China</option>
                        <option  value="65">Christmas Island</option>
                        <option  value="66">Cocos (Keeling) Islands</option>
                        <option  value="67">Colombia</option>
                        <option  value="68">Comoros</option>
                        <option  value="69">Congo</option>
                        <option  value="70">Congo, the Democratic Republic of the</option>
                        <option  value="71">Cook Islands</option>
                        <option  value="72">Costa Rica</option>
                        <option  value="73">Cote d&#039;Ivoire</option>
                        <option  value="74">Croatia</option>
                        <option  value="75">Cuba</option>
                        <option  value="76">Cyprus</option>
                        <option  value="14">Czech Republic</option>
                        <option  value="15">Denmark</option>
                        <option  value="77">Djibouti</option>
                        <option  value="78">Dominica</option>
                        <option  value="79">Dominican Republic</option>
                        <option  value="80">Ecuador</option>
                        <option  value="81">Egypt</option>
                        <option  value="82">El Salvador</option>
                        <option  value="83">Equatorial Guinea</option>
                        <option  value="84">Eritrea</option>
                        <option  value="85">Estonia</option>
                        <option  value="86">Ethiopia</option>
                        <option  value="87">Falkland Islands (Malvinas)</option>
                        <option  value="88">Faroe Islands</option>
                        <option  value="89">Fiji</option>
                        <option  value="13">Finland</option>
                        <option  value="4">France</option>
                        <option  value="90">French Guiana</option>
                        <option  value="91">French Polynesia</option>
                        <option  value="92">French Southern Territories</option>
                        <option  value="93">Gabon</option>
                        <option  value="94">Gambia</option>
                        <option  value="95">Georgia</option>
                        <option  value="5">Germany</option>
                        <option  value="96">Ghana</option>
                        <option  value="97">Gibraltar</option>
                        <option  value="98">Greece</option>
                        <option  value="99">Greenland</option>
                        <option  value="100">Grenada</option>
                        <option  value="101">Guadeloupe</option>
                        <option  value="102">Guam</option>
                        <option  value="103">Guatemala</option>
                        <option  value="104">Guernsey</option>
                        <option  value="105">Guinea</option>
                        <option  value="106">Guinea-Bissau</option>
                        <option  value="107">Guyana</option>
                        <option  value="108">Haiti</option>
                        <option  value="109">Heard Island and McDonald Islands</option>
                        <option  value="110">Holy See (Vatican City State)</option>
                        <option  value="111">Honduras</option>
                        <option  value="112">Hong Kong</option>
                        <option  value="113">Hungary</option>
                        <option  value="6">Iceland</option>
                        <option  value="114">India</option>
                        <option  value="115">Indonesia</option>
                        <option  value="116">Iran, Islamic Republic of</option>
                        <option  value="117">Iraq</option>
                        <option  value="7">Ireland</option>
                        <option  value="23">Isle of Man</option>
                        <option  value="118">Israel</option>
                        <option  value="8">Italy</option>
                        <option  value="119">Jamaica</option>
                        <option  value="120">Japan</option>
                        <option  value="121">Jersey</option>
                        <option  value="122">Jordan</option>
                        <option  value="123">Kazakhstan</option>
                        <option  value="124">Kenya</option>
                        <option  value="125">Kiribati</option>
                        <option  value="126">Korea, Democratic People&#039;s Republic of</option>
                        <option  value="127">Korea, Republic of</option>
                        <option  value="128">Kuwait</option>
                        <option  value="129">Kyrgyzstan</option>
                        <option  value="130">Lao People&#039;s Democratic Republic</option>
                        <option  value="131">Latvia</option>
                        <option  value="132">Lebanon</option>
                        <option  value="133">Lesotho</option>
                        <option  value="134">Liberia</option>
                        <option  value="135">Libyan Arab Jamahiriya</option>
                        <option  value="136">Liechtenstein</option>
                        <option  value="137">Lithuania</option>
                        <option  value="138">Luxembourg</option>
                        <option  value="139">Macao</option>
                        <option  value="140">Macedonia</option>
                        <option  value="141">Madagascar</option>
                        <option  value="142">Malawi</option>
                        <option  value="143">Malaysia</option>
                        <option  value="144">Maldives</option>
                        <option  value="145">Mali</option>
                        <option  value="146">Malta</option>
                        <option  value="147">Marshall Islands</option>
                        <option  value="148">Martinique</option>
                        <option  value="149">Mauritania</option>
                        <option  value="150">Mauritius</option>
                        <option  value="151">Mayotte</option>
                        <option  value="152">Mexico</option>
                        <option  value="153">Micronesia, Federated States of</option>
                        <option  value="154">Moldova, Republic of</option>
                        <option  value="155">Monaco</option>
                        <option  value="156">Mongolia</option>
                        <option  value="157">Montenegro</option>
                        <option  value="158">Montserrat</option>
                        <option  value="159">Morocco</option>
                        <option  value="160">Mozambique</option>
                        <option  value="161">Myanmar</option>
                        <option  value="162">Namibia</option>
                        <option  value="163">Nauru</option>
                        <option  value="164">Nepal</option>
                        <option  value="22">Netherlands</option>
                        <option  value="165">Netherlands Antilles</option>
                        <option  value="166">New Caledonia</option>
                        <option  value="19">New Zealand</option>
                        <option  value="167">Nicaragua</option>
                        <option  value="168">Niger</option>
                        <option  value="169">Nigeria</option>
                        <option  value="170">Niue</option>
                        <option  value="171">Norfolk Island</option>
                        <option  value="172">Northern Mariana Islands</option>
                        <option  value="16">Norway</option>
                        <option  value="173">Oman</option>
                        <option  value="174">Pakistan</option>
                        <option  value="175">Palau</option>
                        <option  value="176">Palestinian Territory, Occupied</option>
                        <option  value="177">Panama</option>
                        <option  value="178">Papua New Guinea</option>
                        <option  value="179">Paraguay</option>
                        <option  value="180">Peru</option>
                        <option  value="181">Philippines</option>
                        <option  value="182">Pitcairn</option>
                        <option  value="183">Poland</option>
                        <option  value="21">Portugal</option>
                        <option  value="184">Puerto Rico</option>
                        <option  value="185">Qatar</option>
                        <option  value="186">Reunion</option>
                        <option  value="187">Romania</option>
                        <option  value="20">Russian Federation</option>
                        <option  value="188">Rwanda</option>
                        <option  value="189">Saint Barthélemy</option>
                        <option  value="190">Saint Helena</option>
                        <option  value="191">Saint Kitts and Nevis</option>
                        <option  value="192">Saint Lucia</option>
                        <option  value="193">Saint Martin (French part)</option>
                        <option  value="194">Saint Pierre and Miquelon</option>
                        <option  value="195">Saint Vincent and the Grenadines</option>
                        <option  value="196">Samoa</option>
                        <option  value="197">San Marino</option>
                        <option  value="198">Sao Tome and Principe</option>
                        <option  value="199">Saudi Arabia</option>
                        <option  value="200">Senegal</option>
                        <option  value="201">Serbia</option>
                        <option  value="202">Seychelles</option>
                        <option  value="203">Sierra Leone</option>
                        <option  value="204">Singapore</option>
                        <option  value="205">Slovakia</option>
                        <option  value="206">Slovenia</option>
                        <option  value="207">Solomon Islands</option>
                        <option  value="208">Somalia</option>
                        <option  value="209">South Africa</option>
                        <option  value="210">South Georgia and the South Sandwich Islands</option>
                        <option  value="9">Spain</option>
                        <option  value="211">Sri Lanka</option>
                        <option  value="212">Sudan</option>
                        <option  value="213">Suriname</option>
                        <option  value="214">Svalbard and Jan Mayen</option>
                        <option  value="215">Swaziland</option>
                        <option  value="10">Sweden</option>
                        <option  value="18">Switzerland</option>
                        <option  value="216">Syrian Arab Republic</option>
                        <option  value="217">Taiwan, Province of China</option>
                        <option  value="218">Tajikistan</option>
                        <option  value="219">Tanzania, United Republic of</option>
                        <option  value="220">Thailand</option>
                        <option  value="221">Timor-Leste</option>
                        <option  value="222">Togo</option>
                        <option  value="223">Tokelau</option>
                        <option  value="224">Tonga</option>
                        <option  value="225">Trinidad and Tobago</option>
                        <option  value="226">Tunisia</option>
                        <option  value="227">Turkey</option>
                        <option  value="228">Turkmenistan</option>
                        <option  value="229">Turks and Caicos Islands</option>
                        <option  value="230">Tuvalu</option>
                        <option  value="231">Uganda</option>
                        <option  value="232">Ukraine</option>
                        <option  value="233">United Arab Emirates</option>
                        <option  value="17">United Kingdom</option>
                        <option  value="1">United States</option>
                        <option  value="234">United States Minor Outlying Islands</option>
                        <option  value="235">Uruguay</option>
                        <option  value="236">Uzbekistan</option>
                        <option  value="237">Vanuatu</option>
                        <option  value="238">Venezuela, Bolivarian Republic of</option>
                        <option  value="239">Viet Nam</option>
                        <option  value="240">Virgin Islands, British</option>
                        <option  value="241">Virgin Islands, U.S.</option>
                        <option  value="242">Wallis and Futuna</option>
                        <option  value="243">Western Sahara</option>
                        <option  value="244">Yemen</option>
                        <option  value="245">Zambia</option>
                        <option  value="246">Zimbabwe</option>
                        </select>
          <span class="error small text-danger"></span>
        </div>
        <div class="col-sm-6 form-group">
          <label for="shipping_state" class="hide">State</label>
            <select data-mirror id="shipping_state" class="chzn-select form-control disabled" name="shippingInfo[stateId]" data-ajax-refresh > 
                <option selected value="">- no states -</option>

            </select>
          <span class="error small text-danger"></span> 
        </div>
        
      </div>
    </div>
    <div class="col-sm-12">
                  <a href="#top" class="btn btn-important pull-right data-ajax-url" data-ajax-handler="shop:checkout" data-ajax-update="#checkout-totals=shop-checkout-totals, #checkout-page=shop-checkout" data-hash="step-2">Proceed to Shipping</a>
                      <input type="hidden" name="step" value="billing_info,shipping_info">
      <input type="hidden" name="nextStep" value="shipping_method"/>
    
        </div>
  </div>
  </form>
</div>
</div>
</div>

<!-- SHIPPING METHOD -->


<div class="checkout-tab" id="shop-ship">
  <div class="checkout-tab-bar row">
    <div class="col-md-6 columns">
      <p>
                  <i class="fa fa-circle-thin"></i> 
          Step 2: Shipping Method
              </p>
    </div>
    <div class="col-md-6 columns text-right">
              <span class="status">Fill out Billing Info</span>
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
</div>
<!-- PAYMENT METHOD -->

<div class="checkout-tab" id="shop-pay">
  <div class="checkout-tab-bar row">
    <div class="col-md-6 columns">
      <p>
                  <i class="fa fa-circle-thin"></i> 
                Step 3: Payment Method
      </p>
    </div>
    <div class="col-md-6 columns text-right">
              <span class="status">Fill out Billing Info</span>
          </div>
  </div>
</div>

  <div class="checkout-content">
<div id="shop-checkout-payment-method" class="col-md-12 row">
    <div class="col-md-12">
        <p id="title-p-d">Select a Payment Method</p>
              <p>Please fill out billing/shipping info</p>
          </div>
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
  <div class="checkout-content checkout-open">
  	<div class="row" id="cart-row">

			<div class="col-sm-2" id="cart-img" style="padding:0;">
				<img src="//d2pm12cz12gs8x.cloudfront.net/store-hype-543eddf2617d2/uploaded/thumbnails/4a_autoxauto-jpg-keep-ratio.png?1416257987" alt="3 Pasta&#039;s">
			</div>
			<div class="col-sm-10" style="padding-right:0px;">
				<a href="/product/3-pasta-s">3 Pasta&#039;s</a><br>
				                    <p class="h6">Portion: 1; Pasta Option: Normal</p>
                 
        <p class="small">Quantity: <span class="pull-right">1 x $10.00</span></p>
        <p class="small">Total: <span class="pull-right">$10.00</span></p>
			</div>
		</div>

  <hr>
  <span id="checkout-totals"><p>Subtotal: <span class="pull-right">$10.00</span></p>
<p>Tax: <span class="pull-right">$0.00</span></p>
<br>
<p class="subtotal"><strong>Total:</strong>  <span class="pull-right"><strong>$10.00</strong></span></p></span>
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
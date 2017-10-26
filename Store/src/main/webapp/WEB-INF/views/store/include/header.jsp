<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="description"
	content="Free Bootstrap Themes by 365Bootstrap dot com - Free Responsive Html5 Templates">
<meta name="author" content="https://www.365bootstrap.com">

<title>Barakamon Team Convenient Store Page</title>

<!-- Bootstrap Core CSS -->
<link rel="stylesheet"
	href="/resources/FashionShop/css/bootstrap.min.css" type="text/css">

<!-- Custom CSS -->
<link rel="stylesheet" href="/resources/FashionShop/css/style.css">


<!-- Custom Fonts -->
<link rel="stylesheet"
	href="/resources/FashionShop/font-awesome/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet"
	href="/resources/FashionShop/fonts/font-slider.css" type="text/css">

<!-- jQuery and Modernizr-->
<script src="/resources/FashionShop/js/jquery-2.1.1.js"></script>
<!-- Core JavaScript Files -->
<script src="/resources/FashionShop/js/bootstrap.min.js"></script>




<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="/resources/FashionShop/js/html5shiv.js"></script>
        <script src="/resources/FashionShop/js/respond.min.js"></script>
    <![endif]-->
</head>

<body>

	<!--Top-->
	<nav id="top">
	<div class="container">
		<div class="row"></div>
	</div>
	</nav>
	<!--Header-->
	<header>
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<div id="logo">
					<img src="/resources/FashionShop/images/logo.png" />
				</div>

			</div>
			<div class="col-md-6 text-right">
				<div class="phone">
					<span class="glyphicon glyphicon-earphone"></span>010-9084-3035
				</div>
				<div class="mail">
					<span class="glyphicon glyphicon-envelope"></span>bouquet3035@gmail.com
				</div>
				<form class="form-search">
					<input type="text" class="input-medium search-query">
					<button type="submit" class="btn">
						<span class="glyphicon glyphicon-search"></span>
					</button>
				</form>
			</div>
			<c:choose>
				<c:when test="${memberDTO.mid == null }">
				<div id="cart">
					<a class="btn btn-cart" href="/login">Login<strong>0</strong></a>
				</div>
				</c:when>
				<c:otherwise>
				<div id="cart">
				<a class="btn btn-cart" href="/logout">
					Logout<strong>0</strong></a>
					</div>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
	</header>
	<!--Navigation-->
	<nav id="menu" class="navbar">
	<div class="container">
		<div class="navbar-header">
			<span id="heading" class="visible-xs">Categories</span>
			<button type="button" class="btn btn-navbar navbar-toggle"
				data-toggle="collapse" data-target=".navbar-ex1-collapse">
				<i class="fa fa-bars"></i>
			</button>
		</div>
		<div class="collapse navbar-collapse navbar-ex1-collapse">
			<ul class="nav navbar-nav">
				<li><a href="/store/main">Home</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">1+1행사상품</a>
					<div class="dropdown-menu">
						<div class="dropdown-inner">
							<ul class="list-unstyled">
								<li><a href="category.html">Text 101</a></li>
								<li><a href="category.html">Text 102</a></li>
							</ul>
						</div>
					</div></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">2+1행사상품</a>
					<div class="dropdown-menu">
						<div class="dropdown-inner">
							<ul class="list-unstyled">
								<li><a href="category.html">Text 201</a></li>
								<li><a href="category.html">Text 202</a></li>
								<li><a href="category.html">Text 203</a></li>
								<li><a href="category.html">Text 204</a></li>
								<li><a href="category.html">Text 205</a></li>
							</ul>
						</div>
					</div></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">2+2행사상품</a>
					<div class="dropdown-menu" style="margin-left: -203.625px;">
						<div class="dropdown-inner">
							<ul class="list-unstyled">
								<li><a href="category.html">Text 301</a></li>
								<li><a href="category.html">Text 302</a></li>
								<li><a href="category.html">Text 303</a></li>
								<li><a href="category.html">Text 304</a></li>
								<li><a href="category.html">Text 305</a></li>
							</ul>
							<ul class="list-unstyled">
								<li><a href="category.html">Text 306</a></li>
								<li><a href="category.html">Text 307</a></li>
								<li><a href="category.html">Text 308</a></li>
								<li><a href="category.html">Text 309</a></li>
								<li><a href="category.html">Text 310</a></li>
							</ul>
							<ul class="list-unstyled">
								<li><a href="category.html">Text 311</a></li>
								<li><a href="category.html">Text 312</a></li>
								<li><a href="category.html#">Text 313</a></li>
								<li><a href="category.html#">Text 314</a></li>
								<li><a href="category.html">Text 315</a></li>
							</ul>
						</div>
					</div></li>
				<li><a href="category.html">할인상품</a></li>
				<li><a href="/store/list">공동구매 게시판</a></li>
				<li><a href="category.html">공지사항</a></li>
			</ul>
		</div>
	</div>
	</nav>
</body>
</html>
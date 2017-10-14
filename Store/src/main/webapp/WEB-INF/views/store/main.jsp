<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="Free Bootstrap Themes by 365Bootstrap dot com - Free Responsive Html5 Templates">
    <meta name="author" content="https://www.365bootstrap.com">
	
    <title>Barakamon Team Convenient Store Page</title>
	
    <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href="/resources/FashionShop/css/bootstrap.min.css"  type="text/css">
	
	<!-- Custom CSS -->
    <link rel="stylesheet" href="/resources/FashionShop/css/style.css">
	
	
	<!-- Custom Fonts -->
    <link rel="stylesheet" href="/resources/FashionShop/font-awesome/css/font-awesome.min.css"  type="text/css">
    <link rel="stylesheet" href="/resources/FashionShop/fonts/font-slider.css" type="text/css">
	
	<!-- jQuery and Modernizr-->
	<script src="/resources/js/jquery-2.1.1.js"></script>
	
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
			<div class="row">
               
			</div>
		</div>
	</nav>
	<!--Header-->
	<header >
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<div id="logo"><img src="/resources/FashionShop/images/logo.png" /></div>/*로고 파일 변경 필요.*/
				</div>
				<div class="col-md-6 text-right">
					<div class="phone"><span class="glyphicon glyphicon-earphone"></span>010-9084-3035</div>
					<div class="mail"><span class="glyphicon glyphicon-envelope"></span>bouquet3035@gmail.com</div>
					<form class="form-search">  
						<input type="text" class="input-medium search-query">  
						<button type="submit" class="btn"><span class="glyphicon glyphicon-search"></span></button>  
					</form>
				</div>
				<div id="cart"><a class="btn btn-cart" href="cart.html"><span class="glyphicon glyphicon-shopping-cart"></span>CART<strong>0</strong></a></div>
			</div>
		</div>
	</header>
	<!--Navigation-->
    <nav id="menu" class="navbar">
		<div class="container">
			<div class="navbar-header"><span id="heading" class="visible-xs">Categories</span>
			  <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
			</div>
			<div class="collapse navbar-collapse navbar-ex1-collapse">
				<ul class="nav navbar-nav">
					<li><a href="index.html">Home</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">1+1행사상품</a>
						<div class="dropdown-menu">
							<div class="dropdown-inner">
								<ul class="list-unstyled">
									<li><a href="category.html">Text 101</a></li>
									<li><a href="category.html">Text 102</a></li>
								</ul>
							</div>
						</div>
					</li>
					<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">2+1행사상품</a>
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
						</div>
					</li>
					<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">2+2행사상품</a>
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
						</div>
					</li>
					<li><a href="category.html">할인상품</a></li>
					<li><a href="category.html">공지사항</a></li>
				</ul>
			</div>
		</div>
	</nav>
	
	<!--//////////////////////////////////////////////////-->
	<!--///////////////////HomePage///////////////////////-->
	<!--//////////////////////////////////////////////////-->
	<div id="page-content" class="home-page">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<!-- Carousel -->
					<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
						<!-- Indicators -->
						<ol class="carousel-indicators hidden-xs">
							<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
							<li data-target="#carousel-example-generic" data-slide-to="1"></li>
							<li data-target="#carousel-example-generic" data-slide-to="2"></li>
						</ol>
						<!-- Wrapper for slides -->
						<div class="carousel-inner">
							<div class="item active">
								<img src="/resources/FashionShop/images/main-banner1-1440x550.jpg" alt="First slide">
								<!-- Static Header -->
								<div class="header-text hidden-xs">
									<div class="col-md-12 text-center">
									</div>
								</div><!-- /header-text -->
							</div>
							<div class="item">
								<img src="/resources/FashionShop/images/main-banner2-1440x550.jpg" alt="Second slide">
								<!-- Static Header -->
								<div class="header-text hidden-xs">
									<div class="col-md-12 text-center">
									</div>
								</div><!-- /header-text -->
							</div>
							<div class="item">
								<img src="/resources/FashionShop/images/main-banner3-1440x550.jpg" alt="Third slide">
								<!-- Static Header -->
								<div class="header-text hidden-xs">
									<div class="col-md-12 text-center">
									</div>
								</div><!-- /header-text -->
							</div>
						</div>
						<!-- Controls -->
						<a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
							<span class="glyphicon glyphicon-chevron-left"></span>
						</a>
						<a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
							<span class="glyphicon glyphicon-chevron-right"></span>
						</a>
					</div><!-- /carousel -->
				</div>
			</div>
			<div class="row">
				<div class="banner">
					<div class="col-lg-2">
						<img src="/resources/FashionShop/images/CU Banner.jpg" />
					</div>
					<div class="col-lg-2">
						<img src="/resources/FashionShop/images/GS Banner.png" />
					</div>
					<div class="col-lg-2">
						<img src="/resources/FashionShop/images/711 Banner.png" />
					</div>
					<div class="col-lg-2">
						<img src="/resources/FashionShop/images/Mini Banner.jpg" />
					</div>
					<div class="col-lg-2">
						<img src="/resources/FashionShop/images/E Banner.jpg" />
					</div>
				</div>
			</div>
			<div class="row">
				<ul class="nav nav-tabs">
					<li class="active"><a href="#featured">행사 상품 목록</a></li>
					<li><a href="#new">새로운 행사상품</a></li>
				</ul>
				<div class="tab-content">
					<div id="featured" class="tab-pane fade in active">
						<div class="products">
							<div class="col-sm-7 five-three">
								<div class="row">
								  <div class="col-sm-4">
										<div class="product">
											<img src="https://4.bp.blogspot.com/-50-75bhNrhQ/WeB-GFBhmRI/AAAAAAAAACg/11ZFFsDPZxMOJK_FJjm6BNc9yn27zHlvACLcBGAs/s1600/20171010_152342_15.png" />
												<div class="name"><h3>망고바</h3></div>
												<div class="price">10000</div>
												<div class="event">2+1</div>
										</div>
								  </div>
								  <div class="col-sm-4">
										<div class="product">
											<img src="https://3.bp.blogspot.com/-FM8zs-_-O0Q/WeB-Hvm7bwI/AAAAAAAAACk/7csZ8wBomekitJlHh5SlHaN7QaFFykx9gCLcBGAs/s1600/20171010_152342_22.png" />
												<div class="name"><h3>프링글스 (치즈맛)</h3></div>
												<div class="price">2500</div>
												<div class="event">1+1</div>
										</div>
								  </div>
								  <div class="col-sm-4">
									<div class="product">
											<div class="image">
												<a href="product.html"><img src="https://4.bp.blogspot.com/-F6VIVavVz1k/WeB-JivmjPI/AAAAAAAAACs/CrQgL2H7ii8OPSCYT-GgMI0ZleYjrWHtQCLcBGAs/s1600/20171010_152342_23.png" /></a>
												<ul class="buttons">
													<li><a class="btn btn-2 cart" href="#"><span class="glyphicon glyphicon-shopping-cart"></span></a></li>
													<li><a class="btn btn-2 wishlist" href="#"><span class="glyphicon glyphicon-heart"></span></a></li>
													<li><a class="btn btn-2 compare" href="#"><span class="glyphicon glyphicon-transfer"></span></a></li>
												</ul>
											</div>
											<div class="caption">
												<div class="name"><h3><a href="product.html">호박죽</a></h3></div>
												<div class="price">2200원<span>3200원</span></div>
												<div class="rating"><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star-empty"></span><span class="glyphicon glyphicon-star-empty"></span><span class="glyphicon glyphicon-star-empty"></span></div>
											</div>
										</div>
								  </div><!-- end inner row -->
								</div>
							</div>
							<div class="col-sm-5 five-two">
								<div class="row">
									<div class="col-sm-6">
										<div class="product">
												<div class="image">
													<a href="product.html"><img src="https://1.bp.blogspot.com/-wmaP_8T-TeQ/WeB-Js7H1DI/AAAAAAAAACo/1hxwtU4BXCITdR0DUC9OAKcOpCZMjUhKwCLcBGAs/s1600/20171010_152342_27.png" /></a>
													<ul class="buttons">
														<li><a class="btn btn-2 cart" href="#"><span class="glyphicon glyphicon-shopping-cart"></span></a></li>
														<li><a class="btn btn-2 wishlist" href="#"><span class="glyphicon glyphicon-heart"></span></a></li>
														<li><a class="btn btn-2 compare" href="#"><span class="glyphicon glyphicon-transfer"></span></a></li>
													</ul>
												</div>
												<div class="caption">
													<div class="name"><h3><a href="product.html">고향만두</a></h3></div>
													<div class="price">4500원<span>5800원</span></div>
													<div class="rating"><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span></div>
												</div>
											</div>
									</div>
									<div class="col-sm-6">
										<div class="product">
												<div class="image">
													<a href="product.html"><img src="https://1.bp.blogspot.com/-AMhoyMyw4is/WeB-J2iCYCI/AAAAAAAAACw/wX6w0JZGhCYjJiXp220J2VhbrGi_Jif8ACLcBGAs/s1600/20171010_152342_29.png" /></a>
													<div class="hot">
														<span>HOT</span>
													</div>
													<ul class="buttons">
														<li><a class="btn btn-2 cart" href="#"><span class="glyphicon glyphicon-shopping-cart"></span></a></li>
														<li><a class="btn btn-2 wishlist" href="#"><span class="glyphicon glyphicon-heart"></span></a></li>
														<li><a class="btn btn-2 compare" href="#"><span class="glyphicon glyphicon-transfer"></span></a></li>
													</ul>
												</div>
												<div class="caption">
													<div class="name"><h3><a href="product.html">몽쉘</a></h3></div>
													<div class="price">2400원<span>3500원</span></div>
													<div class="rating"><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span></div>
												</div>
												
											</div>
									</div>
								</div><!-- end inner row -->
							</div>
							<div class="clear"></div>
						</div>
					</div>
					<div id="new" class="tab-pane fade">
						<div class="products">
							<div class="col-sm-7 five-three">
								<div class="row">
								  <div class="col-sm-4">
									<div class="product">
											<div class="image">
												<a href="product.html"><img src="/resources/FashionShop/images/clothing_sp6_1.jpg" /></a>
												<ul class="buttons">
													<li><a class="btn btn-2 cart" href="#"><span class="glyphicon glyphicon-shopping-cart"></span></a></li>
													<li><a class="btn btn-2 wishlist" href="#"><span class="glyphicon glyphicon-heart"></span></a></li>
													<li><a class="btn btn-2 compare" href="#"><span class="glyphicon glyphicon-transfer"></span></a></li>
												</ul>
											</div>
											<div class="caption">
												<div class="name"><h3><a href="product.html">Pretty Playsuit</a></h3></div>
												<div class="price">$122<span>$98</span></div>
												<div class="rating"><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star-empty"></span><span class="glyphicon glyphicon-star-empty"></span><span class="glyphicon glyphicon-star-empty"></span></div>
											</div>
										</div>
								  </div>
								  <div class="col-sm-4">
									<div class="product">
											<div class="image">
												<a href="product.html"><img src="/resources/FashionShop/images/clothing_sp5_1.jpg" /></a>
												<ul class="buttons">
													<li><a class="btn btn-2 cart" href="#"><span class="glyphicon glyphicon-shopping-cart"></span></a></li>
													<li><a class="btn btn-2 wishlist" href="#"><span class="glyphicon glyphicon-heart"></span></a></li>
													<li><a class="btn btn-2 compare" href="#"><span class="glyphicon glyphicon-transfer"></span></a></li>
												</ul>
											</div>
											<div class="caption">
												<div class="name"><h3><a href="product.html">Pretty Playsuit</a></h3></div>
												<div class="price">$122<span>$98</span></div>
												<div class="rating"><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star-empty"></span><span class="glyphicon glyphicon-star-empty"></span></div>
											</div>
										</div>
								  </div>
								  <div class="col-sm-4">
									<div class="product">
											<div class="image">
												<a href="product.html"><img src="/resources/FashionShop/images/clothing_sp3_2.jpg" /></a>
												<ul class="buttons">
													<li><a class="btn btn-2 cart" href="#"><span class="glyphicon glyphicon-shopping-cart"></span></a></li>
													<li><a class="btn btn-2 wishlist" href="#"><span class="glyphicon glyphicon-heart"></span></a></li>
													<li><a class="btn btn-2 compare" href="#"><span class="glyphicon glyphicon-transfer"></span></a></li>
												</ul>
											</div>
											<div class="caption">
												<div class="name"><h3><a href="product.html">Pretty Playsuit</a></h3></div>
												<div class="price">$122<span>$98</span></div>
												<div class="rating"><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star-empty"></span></div>
											</div>
										</div>
								  </div><!-- end inner row -->
								</div>
							</div>
							<div class="col-sm-5 five-two">
								<div class="row">
									<div class="col-sm-6">
										<div class="product">
												<div class="image">
													<a href="product.html"><img src="/resources/FashionShop/images/clothing_sp19_1.jpg" /></a>
													<div class="hot">
														<span>HOT</span>
													</div>
													<ul class="buttons">
														<li><a class="btn btn-2 cart" href="#"><span class="glyphicon glyphicon-shopping-cart"></span></a></li>
														<li><a class="btn btn-2 wishlist" href="#"><span class="glyphicon glyphicon-heart"></span></a></li>
														<li><a class="btn btn-2 compare" href="#"><span class="glyphicon glyphicon-transfer"></span></a></li>
													</ul>
												</div>
												<div class="caption">
													<div class="name"><h3><a href="product.html">Pretty Playsuit</a></h3></div>
													<div class="price">$122<span>$98</span></div>
													<div class="rating"><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span></div>
												</div>
											</div>
									</div>
									<div class="col-sm-6">	
										<div class="product">
												<div class="image">
													<a href="product.html"><img src="/resources/FashionShop/images/clothing_sp12_1.jpg" /></a>
													<ul class="buttons">
														<li><a class="btn btn-2 cart" href="#"><span class="glyphicon glyphicon-shopping-cart"></span></a></li>
														<li><a class="btn btn-2 wishlist" href="#"><span class="glyphicon glyphicon-heart"></span></a></li>
														<li><a class="btn btn-2 compare" href="#"><span class="glyphicon glyphicon-transfer"></span></a></li>
													</ul>
												</div>
												
												<div class="caption">
													<div class="name"><h3><a href="product.html">Pretty Playsuit</a></h3></div>
													<div class="price">$122<span>$98</span></div>
													<div class="rating"><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span></div>
												</div>
											</div>
									</div>
								</div><!-- end inner row -->
							</div>
							<div class="clear"></div>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="banner">
					<div class="col-sm-6">
						<img src="/resources/FashionShop/images/sub-banner4.jpg" />
					</div>
					<div class="col-sm-6">
						<img src="/resources/FashionShop/images/sub-banner5.jpg" />
					</div>
				</div>
			</div>
			<div class="row">
				<ul class="nav nav-tabs">
					<li class="active"><a href="#best">BEST SALES</a></li>
					<li><a href="#special">SPECIAL</a></li>
				</ul>
				<div class="tab-content">
					<div id="best" class="tab-pane fade in active">
						<div class="products">
							<div class="col-sm-7 five-three">
								<div class="row">
								  <div class="col-sm-4">
									<div class="product">
											<div class="image">
												<a href="product.html"><img src="/resources/FashionShop/images/clothing_sp3_2.jpg" /></a>
												<ul class="buttons">
													<li><a class="btn btn-2 cart" href="#"><span class="glyphicon glyphicon-shopping-cart"></span></a></li>
													<li><a class="btn btn-2 wishlist" href="#"><span class="glyphicon glyphicon-heart"></span></a></li>
													<li><a class="btn btn-2 compare" href="#"><span class="glyphicon glyphicon-transfer"></span></a></li>
												</ul>
											</div>
											<div class="caption">
												<div class="name"><h3><a href="product.html">Pretty Playsuit</a></h3></div>
												<div class="price">$122<span>$98</span></div>
												<div class="rating"><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star-empty"></span></div>
											</div>
										</div>
								  </div>
								  <div class="col-sm-4">
									<div class="product">
											<div class="image">
												<a href="product.html"><img src="/resources/FashionShop/images/clothing_sp5_1.jpg" /></a>
												<ul class="buttons">
													<li><a class="btn btn-2 cart" href="#"><span class="glyphicon glyphicon-shopping-cart"></span></a></li>
													<li><a class="btn btn-2 wishlist" href="#"><span class="glyphicon glyphicon-heart"></span></a></li>
													<li><a class="btn btn-2 compare" href="#"><span class="glyphicon glyphicon-transfer"></span></a></li>
												</ul>
											</div>
											<div class="caption">
												<div class="name"><h3><a href="product.html">Pretty Playsuit</a></h3></div>
												<div class="price">$122<span>$98</span></div>
												<div class="rating"><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star-empty"></span><span class="glyphicon glyphicon-star-empty"></span></div>
											</div>
										</div>
								  </div>
								  <div class="col-sm-4">
									<div class="product">
											<div class="image">
												<a href="product.html"><img src="/resources/FashionShop/images/clothing_sp6_1.jpg" /></a>
												<ul class="buttons">
													<li><a class="btn btn-2 cart" href="#"><span class="glyphicon glyphicon-shopping-cart"></span></a></li>
													<li><a class="btn btn-2 wishlist" href="#"><span class="glyphicon glyphicon-heart"></span></a></li>
													<li><a class="btn btn-2 compare" href="#"><span class="glyphicon glyphicon-transfer"></span></a></li>
												</ul>
											</div>
											<div class="caption">
												<div class="name"><h3><a href="product.html">Pretty Playsuit</a></h3></div>
												<div class="price">$122<span>$98</span></div>
												<div class="rating"><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star-empty"></span><span class="glyphicon glyphicon-star-empty"></span><span class="glyphicon glyphicon-star-empty"></span></div>
											</div>
										</div>
								  </div><!-- end inner row -->
								</div>
							</div>
							<div class="col-sm-5 five-two">
								<div class="row">
									<div class="col-sm-6">
										<div class="product">
												<div class="image">
													<a href="product.html"><img src="/resources/FashionShop/images/clothing_sp12_1.jpg" /></a>
													<ul class="buttons">
														<li><a class="btn btn-2 cart" href="#"><span class="glyphicon glyphicon-shopping-cart"></span></a></li>
														<li><a class="btn btn-2 wishlist" href="#"><span class="glyphicon glyphicon-heart"></span></a></li>
														<li><a class="btn btn-2 compare" href="#"><span class="glyphicon glyphicon-transfer"></span></a></li>
													</ul>
												</div>
												<div class="caption">
													<div class="name"><h3><a href="product.html">Pretty Playsuit</a></h3></div>
													<div class="price">$122<span>$98</span></div>
													<div class="rating"><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span></div>
												</div>
											</div>
									</div>
									<div class="col-sm-6">
										<div class="product">
												<div class="image">
													<a href="product.html"><img src="/resources/FashionShop/images/clothing_sp19_1.jpg" /></a>
													<div class="hot">
														<span>HOT</span>
													</div>
													<ul class="buttons">
														<li><a class="btn btn-2 cart" href="#"><span class="glyphicon glyphicon-shopping-cart"></span></a></li>
														<li><a class="btn btn-2 wishlist" href="#"><span class="glyphicon glyphicon-heart"></span></a></li>
														<li><a class="btn btn-2 compare" href="#"><span class="glyphicon glyphicon-transfer"></span></a></li>
													</ul>
												</div>
												<div class="caption">
													<div class="name"><h3><a href="product.html">Pretty Playsuit</a></h3></div>
													<div class="price">$122<span>$98</span></div>
													<div class="rating"><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span></div>
												</div>
											</div>
									</div>
								</div><!-- end inner row -->
							</div>
							<div class="clear"></div>
						</div>
					</div>
					<div id="special" class="tab-pane fade">
						<div class="products">
							<div class="col-sm-7 five-three">
								<div class="row">
								  <div class="col-sm-4">
									<div class="product">
												<div class="image">
													<a href="product.html"><img src="/resources/FashionShop/images/clothing_sp19_1.jpg" /></a>
													<div class="hot">
														<span>HOT</span>
													</div>
													<ul class="buttons">
														<li><a class="btn btn-2 cart" href="#"><span class="glyphicon glyphicon-shopping-cart"></span></a></li>
														<li><a class="btn btn-2 wishlist" href="#"><span class="glyphicon glyphicon-heart"></span></a></li>
														<li><a class="btn btn-2 compare" href="#"><span class="glyphicon glyphicon-transfer"></span></a></li>
													</ul>
												</div>
												<div class="caption">
													<div class="name"><h3><a href="product.html">Pretty Playsuit</a></h3></div>
													<div class="price">$122<span>$98</span></div>
													<div class="rating"><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span></div>
												</div>
											</div>
								  </div>
								  <div class="col-sm-4">
									<div class="product">
											<div class="image">
												<a href="product.html"><img src="/resources/FashionShop/images/clothing_sp5_1.jpg" /></a>
												<ul class="buttons">
													<li><a class="btn btn-2 cart" href="#"><span class="glyphicon glyphicon-shopping-cart"></span></a></li>
													<li><a class="btn btn-2 wishlist" href="#"><span class="glyphicon glyphicon-heart"></span></a></li>
													<li><a class="btn btn-2 compare" href="#"><span class="glyphicon glyphicon-transfer"></span></a></li>
												</ul>
											</div>
											<div class="caption">
												<div class="name"><h3><a href="product.html">Pretty Playsuit</a></h3></div>
												<div class="price">$122<span>$98</span></div>
												<div class="rating"><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star-empty"></span><span class="glyphicon glyphicon-star-empty"></span></div>
											</div>
										</div>
								  </div>
								  <div class="col-sm-4">
									<div class="product">
												<div class="image">
													<a href="product.html"><img src="/resources/FashionShop/images/clothing_sp12_1.jpg" /></a>
													<ul class="buttons">
														<li><a class="btn btn-2 cart" href="#"><span class="glyphicon glyphicon-shopping-cart"></span></a></li>
														<li><a class="btn btn-2 wishlist" href="#"><span class="glyphicon glyphicon-heart"></span></a></li>
														<li><a class="btn btn-2 compare" href="#"><span class="glyphicon glyphicon-transfer"></span></a></li>
													</ul>
												</div>
												<div class="caption">
													<div class="name"><h3><a href="product.html">Pretty Playsuit</a></h3></div>
													<div class="price">$122<span>$98</span></div>
													<div class="rating"><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span></div>
												</div>
											</div>
								  </div><!-- end inner row -->
								</div>
							</div>
							<div class="col-sm-5 five-two">
								<div class="row">
									<div class="col-sm-6">
										<div class="product">
											<div class="image">
												<a href="product.html"><img src="/resources/FashionShop/images/clothing_sp6_1.jpg" /></a>
												<ul class="buttons">
													<li><a class="btn btn-2 cart" href="#"><span class="glyphicon glyphicon-shopping-cart"></span></a></li>
													<li><a class="btn btn-2 wishlist" href="#"><span class="glyphicon glyphicon-heart"></span></a></li>
													<li><a class="btn btn-2 compare" href="#"><span class="glyphicon glyphicon-transfer"></span></a></li>
												</ul>
											</div>
											<div class="caption">
												<div class="name"><h3><a href="product.html">Pretty Playsuit</a></h3></div>
												<div class="price">$122<span>$98</span></div>
												<div class="rating"><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star-empty"></span><span class="glyphicon glyphicon-star-empty"></span><span class="glyphicon glyphicon-star-empty"></span></div>
											</div>
										</div>
									</div>
									<div class="col-sm-6">
										
										<div class="product">
											<div class="image">
												<a href="product.html"><img src="/resources/FashionShop/images/clothing_sp3_2.jpg" /></a>
												<ul class="buttons">
													<li><a class="btn btn-2 cart" href="#"><span class="glyphicon glyphicon-shopping-cart"></span></a></li>
													<li><a class="btn btn-2 wishlist" href="#"><span class="glyphicon glyphicon-heart"></span></a></li>
													<li><a class="btn btn-2 compare" href="#"><span class="glyphicon glyphicon-transfer"></span></a></li>
												</ul>
											</div>
											<div class="caption">
												<div class="name"><h3><a href="product.html">Pretty Playsuit</a></h3></div>
												<div class="price">$122<span>$98</span></div>
												<div class="rating"><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star-empty"></span></div>
											</div>
										</div>
									</div>
								</div><!-- end inner row -->
							</div>
							<div class="clear"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<footer>
		<div class="top-footer">
			<div class="container">
				<div class="row">
					<div class="col-md-6 text-right">
						<h4>Subcribe Email</h4>
						<p>메일을 입력해주세요(ex.gmail.com/naver.com/...)</p>
					</div>
					<div class="col-md-6">
						<form name="subcribe-email" action="subcribe.php">
							<div class="subcribe-form form-group">
								<input class="form-inline" type="text" name="email" value="1"><button href="#" class="btn btn-4" type="submit">Subcribe</button>
							</div>
						</form>
					</div>
					
				</div>
			</div>
		</div>
		<div class="container">
			<div class="wrap-footer">
				<div class="row">
					<div class="col-md-3 col-footer footer-1">
						<img src="images/logofooter.png" />
						<p>혁주와 같이 작업을 하니 너무 힘듭니다.</p>
					</div>
					<div class="col-md-3 col-footer footer-2">
						<div class="heading"><h4>고객 서비스</h4></div>
						<ul>
							<li><a href="#">About Us</a></li>
							<li><a href="#">배달 정보</a></li>
							<li><a href="#">어플 정보</a></li>
							<li><a href="#">상품 정보</a></li>
							<li><a href="#">Contact Us</a></li>
						</ul>
					</div>
					<div class="col-md-3 col-footer footer-3">
						<div class="heading"><h4>My Account</h4></div>
						<ul>
							<li><a href="#">내정보</a></li>
							<li><a href="#">브랜드</a></li>
							<li><a href="#">Gift Vouchers</a></li>
							<li><a href="#">특가상품 배너</a></li>
							<li><a href="#">Site Map</a></li>
						</ul>
					</div>
					<div class="col-md-3 col-footer footer-4">
						<div class="heading"><h4>Contact Us</h4></div>
						<ul>
							<li><span class="glyphicon glyphicon-home"></span>Seoul, Republic of Korea</li>
							<li><span class="glyphicon glyphicon-earphone"></span>010-XXXX-XXXX</li>
							<li><span class="glyphicon glyphicon-envelope"></span>infor@yoursite.com</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	
	</footer>
	
	<!-- JS -->
		<script src="https://code.jquery.com/jquery-3.2.1.min.js"
		integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
		crossorigin="anonymous"></script>
	<script>
	$(document).ready(function(){
		$(".nav-tabs a").click(function(){
			$(this).tab('show');
		});
		$('.nav-tabs a').on('shown.bs.tab', function(event){
			var x = $(event.target).text();         // active tab
			var y = $(event.relatedTarget).text();  // previous tab
			$(".act span").text(x);
			$(".prev span").text(y);
		});
		
		
		
	});
	</script>
</body>
</html>

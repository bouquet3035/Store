<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ include file="include/header.jsp"%>
<body>
	<!--//////////////////////////////////////////////////-->
	<!--///////////////////HomePage///////////////////////-->
	<!--//////////////////////////////////////////////////-->
	<div id="page-content" class="home-page">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<!-- Carousel -->
					<div id="carousel-example-generic" class="carousel slide"
						data-ride="carousel">
						<!-- Indicators -->
						<ol class="carousel-indicators hidden-xs">
							<li data-target="#carousel-example-generic" data-slide-to="0"
								class="active"></li>
							<li data-target="#carousel-example-generic" data-slide-to="1"></li>
							<li data-target="#carousel-example-generic" data-slide-to="2"></li>
						</ol>
						<!-- Wrapper for slides -->
						<div class="carousel-inner">
							<div class="item active">
								<img
									src="/resources/FashionShop/images/main-banner1-1440x550.jpg"
									alt="First slide">
								<!-- Static Header -->
								<div class="header-text hidden-xs">
									<div class="col-md-12 text-center"></div>
								</div>
								<!-- /header-text -->
							</div>
							<div class="item">
								<img
									src="/resources/FashionShop/images/main-banner2-1440x550.jpg"
									alt="Second slide">
								<!-- Static Header -->
								<div class="header-text hidden-xs">
									<div class="col-md-12 text-center"></div>
								</div>
								<!-- /header-text -->
							</div>
							<div class="item">
								<img
									src="/resources/FashionShop/images/main-banner3-1440x550.jpg"
									alt="Third slide">
								<!-- Static Header -->
								<div class="header-text hidden-xs">
									<div class="col-md-12 text-center"></div>
								</div>
								<!-- /header-text -->
							</div>
						</div>
						<!-- Controls -->
						<a class="left carousel-control" href="#carousel-example-generic"
							data-slide="prev"> <span
							class="glyphicon glyphicon-chevron-left"></span>
						</a> <a class="right carousel-control"
							href="#carousel-example-generic" data-slide="next"> <span
							class="glyphicon glyphicon-chevron-right"></span>
						</a>
					</div>
					<!-- /carousel -->
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
									<c:forEach var="plist" items="${plist}">
										<div class="col-sm-4">
											<div class="product" pno=${plist.pno }>
												<!-- pimg=${plist.pimg }
												pname=${plist.pname } price=${plist.saleprice }
												pevent=${plist.pevent } -->
												<div class="image">
													<img src="${plist.pimg}" />
												</div>
												<div class="caption">
													<div class="name">
														<h3>${plist.pname}</h3>
													</div>
													<div class="price">${plist.saleprice}원</div>
													<div class="pevent">${plist.pevent}</div>
												</div>
											</div>
										</div>
									</c:forEach>
								</div>
								<!-- end inner row -->
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
												<a href="product.html"><img
													src="/resources/FashionShop/images/clothing_sp6_1.jpg" /></a>
												<ul class="buttons">
													<li><a class="btn btn-2 cart" href="#"><span
															class="glyphicon glyphicon-shopping-cart"></span></a></li>
													<li><a class="btn btn-2 wishlist" href="#"><span
															class="glyphicon glyphicon-heart"></span></a></li>
													<li><a class="btn btn-2 compare" href="#"><span
															class="glyphicon glyphicon-transfer"></span></a></li>
												</ul>
											</div>
											<div class="caption">
												<div class="name">
													<h3>
														<a href="product.html">Pretty Playsuit</a>
													</h3>
												</div>
												<div class="price">
													$122<span>$98</span>
												</div>
												<div class="rating">
													<span class="glyphicon glyphicon-star"></span><span
														class="glyphicon glyphicon-star"></span><span
														class="glyphicon glyphicon-star-empty"></span><span
														class="glyphicon glyphicon-star-empty"></span><span
														class="glyphicon glyphicon-star-empty"></span>
												</div>
											</div>
										</div>
									</div>
									<div class="col-sm-4">
										<div class="product">
											<div class="image">
												<a href="product.html"><img
													src="/resources/FashionShop/images/clothing_sp5_1.jpg" /></a>
												<ul class="buttons">
													<li><a class="btn btn-2 cart" href="#"><span
															class="glyphicon glyphicon-shopping-cart"></span></a></li>
													<li><a class="btn btn-2 wishlist" href="#"><span
															class="glyphicon glyphicon-heart"></span></a></li>
													<li><a class="btn btn-2 compare" href="#"><span
															class="glyphicon glyphicon-transfer"></span></a></li>
												</ul>
											</div>
											<div class="caption">
												<div class="name">
													<h3>
														<a href="product.html">Pretty Playsuit</a>
													</h3>
												</div>
												<div class="price">
													$122<span>$98</span>
												</div>
												<div class="rating">
													<span class="glyphicon glyphicon-star"></span><span
														class="glyphicon glyphicon-star"></span><span
														class="glyphicon glyphicon-star"></span><span
														class="glyphicon glyphicon-star-empty"></span><span
														class="glyphicon glyphicon-star-empty"></span>
												</div>
											</div>
										</div>
									</div>
									<div class="col-sm-4">
										<div class="product">
											<div class="image">
												<a href="product.html"><img
													src="/resources/FashionShop/images/clothing_sp3_2.jpg" /></a>
												<ul class="buttons">
													<li><a class="btn btn-2 cart" href="#"><span
															class="glyphicon glyphicon-shopping-cart"></span></a></li>
													<li><a class="btn btn-2 wishlist" href="#"><span
															class="glyphicon glyphicon-heart"></span></a></li>
													<li><a class="btn btn-2 compare" href="#"><span
															class="glyphicon glyphicon-transfer"></span></a></li>
												</ul>
											</div>
											<div class="caption">
												<div class="name">
													<h3>
														<a href="product.html">Pretty Playsuit</a>
													</h3>
												</div>
												<div class="price">
													$122<span>$98</span>
												</div>
												<div class="rating">
													<span class="glyphicon glyphicon-star"></span><span
														class="glyphicon glyphicon-star"></span><span
														class="glyphicon glyphicon-star"></span><span
														class="glyphicon glyphicon-star"></span><span
														class="glyphicon glyphicon-star-empty"></span>
												</div>
											</div>
										</div>
									</div>
									<!-- end inner row -->
								</div>
							</div>
							<div class="col-sm-5 five-two">
								<div class="row">
									<div class="col-sm-6">
										<div class="product">
											<div class="image">
												<a href="product.html"><img
													src="/resources/FashionShop/images/clothing_sp19_1.jpg" /></a>
												<div class="hot">
													<span>HOT</span>
												</div>
												<ul class="buttons">
													<li><a class="btn btn-2 cart" href="#"><span
															class="glyphicon glyphicon-shopping-cart"></span></a></li>
													<li><a class="btn btn-2 wishlist" href="#"><span
															class="glyphicon glyphicon-heart"></span></a></li>
													<li><a class="btn btn-2 compare" href="#"><span
															class="glyphicon glyphicon-transfer"></span></a></li>
												</ul>
											</div>
											<div class="caption">
												<div class="name">
													<h3>
														<a href="product.html">Pretty Playsuit</a>
													</h3>
												</div>
												<div class="price">
													$122<span>$98</span>
												</div>
												<div class="rating">
													<span class="glyphicon glyphicon-star"></span><span
														class="glyphicon glyphicon-star"></span><span
														class="glyphicon glyphicon-star"></span><span
														class="glyphicon glyphicon-star"></span><span
														class="glyphicon glyphicon-star"></span>
												</div>
											</div>
										</div>
									</div>
									<div class="col-sm-6">
										<div class="product">
											<div class="image">
												<a href="product.html"><img
													src="/resources/FashionShop/images/clothing_sp12_1.jpg" /></a>
												<ul class="buttons">
													<li><a class="btn btn-2 cart" href="#"><span
															class="glyphicon glyphicon-shopping-cart"></span></a></li>
													<li><a class="btn btn-2 wishlist" href="#"><span
															class="glyphicon glyphicon-heart"></span></a></li>
													<li><a class="btn btn-2 compare" href="#"><span
															class="glyphicon glyphicon-transfer"></span></a></li>
												</ul>
											</div>

											<div class="caption">
												<div class="name">
													<h3>
														<a href="product.html">Pretty Playsuit</a>
													</h3>
												</div>
												<div class="price">
													$122<span>$98</span>
												</div>
												<div class="rating">
													<span class="glyphicon glyphicon-star"></span><span
														class="glyphicon glyphicon-star"></span><span
														class="glyphicon glyphicon-star"></span><span
														class="glyphicon glyphicon-star"></span><span
														class="glyphicon glyphicon-star"></span>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- end inner row -->
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
												<a href="product.html"><img
													src="/resources/FashionShop/images/clothing_sp3_2.jpg" /></a>
												<ul class="buttons">
													<li><a class="btn btn-2 cart" href="#"><span
															class="glyphicon glyphicon-shopping-cart"></span></a></li>
													<li><a class="btn btn-2 wishlist" href="#"><span
															class="glyphicon glyphicon-heart"></span></a></li>
													<li><a class="btn btn-2 compare" href="#"><span
															class="glyphicon glyphicon-transfer"></span></a></li>
												</ul>
											</div>
											<div class="caption">
												<div class="name">
													<h3>
														<a href="product.html">Pretty Playsuit</a>
													</h3>
												</div>
												<div class="price">
													$122<span>$98</span>
												</div>
												<div class="rating">
													<span class="glyphicon glyphicon-star"></span><span
														class="glyphicon glyphicon-star"></span><span
														class="glyphicon glyphicon-star"></span><span
														class="glyphicon glyphicon-star"></span><span
														class="glyphicon glyphicon-star-empty"></span>
												</div>
											</div>
										</div>
									</div>
									<div class="col-sm-4">
										<div class="product">
											<div class="image">
												<a href="product.html"><img
													src="/resources/FashionShop/images/clothing_sp5_1.jpg" /></a>
												<ul class="buttons">
													<li><a class="btn btn-2 cart" href="#"><span
															class="glyphicon glyphicon-shopping-cart"></span></a></li>
													<li><a class="btn btn-2 wishlist" href="#"><span
															class="glyphicon glyphicon-heart"></span></a></li>
													<li><a class="btn btn-2 compare" href="#"><span
															class="glyphicon glyphicon-transfer"></span></a></li>
												</ul>
											</div>
											<div class="caption">
												<div class="name">
													<h3>
														<a href="product.html">Pretty Playsuit</a>
													</h3>
												</div>
												<div class="price">
													$122<span>$98</span>
												</div>
												<div class="rating">
													<span class="glyphicon glyphicon-star"></span><span
														class="glyphicon glyphicon-star"></span><span
														class="glyphicon glyphicon-star"></span><span
														class="glyphicon glyphicon-star-empty"></span><span
														class="glyphicon glyphicon-star-empty"></span>
												</div>
											</div>
										</div>
									</div>
									<div class="col-sm-4">
										<div class="product">
											<div class="image">
												<a href="product.html"><img
													src="/resources/FashionShop/images/clothing_sp6_1.jpg" /></a>
												<ul class="buttons">
													<li><a class="btn btn-2 cart" href="#"><span
															class="glyphicon glyphicon-shopping-cart"></span></a></li>
													<li><a class="btn btn-2 wishlist" href="#"><span
															class="glyphicon glyphicon-heart"></span></a></li>
													<li><a class="btn btn-2 compare" href="#"><span
															class="glyphicon glyphicon-transfer"></span></a></li>
												</ul>
											</div>
											<div class="caption">
												<div class="name">
													<h3>
														<a href="product.html">Pretty Playsuit</a>
													</h3>
												</div>
												<div class="price">
													$122<span>$98</span>
												</div>
												<div class="rating">
													<span class="glyphicon glyphicon-star"></span><span
														class="glyphicon glyphicon-star"></span><span
														class="glyphicon glyphicon-star-empty"></span><span
														class="glyphicon glyphicon-star-empty"></span><span
														class="glyphicon glyphicon-star-empty"></span>
												</div>
											</div>
										</div>
									</div>
									<!-- end inner row -->
								</div>
							</div>
							<div class="col-sm-5 five-two">
								<div class="row">
									<div class="col-sm-6">
										<div class="product">
											<div class="image">
												<a href="product.html"><img
													src="/resources/FashionShop/images/clothing_sp12_1.jpg" /></a>
												<ul class="buttons">
													<li><a class="btn btn-2 cart" href="#"><span
															class="glyphicon glyphicon-shopping-cart"></span></a></li>
													<li><a class="btn btn-2 wishlist" href="#"><span
															class="glyphicon glyphicon-heart"></span></a></li>
													<li><a class="btn btn-2 compare" href="#"><span
															class="glyphicon glyphicon-transfer"></span></a></li>
												</ul>
											</div>
											<div class="caption">
												<div class="name">
													<h3>
														<a href="product.html">Pretty Playsuit</a>
													</h3>
												</div>
												<div class="price">
													$122<span>$98</span>
												</div>
												<div class="rating">
													<span class="glyphicon glyphicon-star"></span><span
														class="glyphicon glyphicon-star"></span><span
														class="glyphicon glyphicon-star"></span><span
														class="glyphicon glyphicon-star"></span><span
														class="glyphicon glyphicon-star"></span>
												</div>
											</div>
										</div>
									</div>
									<div class="col-sm-6">
										<div class="product">
											<div class="image">
												<a href="product.html"><img
													src="/resources/FashionShop/images/clothing_sp19_1.jpg" /></a>
												<div class="hot">
													<span>HOT</span>
												</div>
												<ul class="buttons">
													<li><a class="btn btn-2 cart" href="#"><span
															class="glyphicon glyphicon-shopping-cart"></span></a></li>
													<li><a class="btn btn-2 wishlist" href="#"><span
															class="glyphicon glyphicon-heart"></span></a></li>
													<li><a class="btn btn-2 compare" href="#"><span
															class="glyphicon glyphicon-transfer"></span></a></li>
												</ul>
											</div>
											<div class="caption">
												<div class="name">
													<h3>
														<a href="product.html">Pretty Playsuit</a>
													</h3>
												</div>
												<div class="price">
													$122<span>$98</span>
												</div>
												<div class="rating">
													<span class="glyphicon glyphicon-star"></span><span
														class="glyphicon glyphicon-star"></span><span
														class="glyphicon glyphicon-star"></span><span
														class="glyphicon glyphicon-star"></span><span
														class="glyphicon glyphicon-star"></span>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- end inner row -->
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
												<a href="product.html"><img
													src="/resources/FashionShop/images/clothing_sp19_1.jpg" /></a>
												<div class="hot">
													<span>HOT</span>
												</div>
												<ul class="buttons">
													<li><a class="btn btn-2 cart" href="#"><span
															class="glyphicon glyphicon-shopping-cart"></span></a></li>
													<li><a class="btn btn-2 wishlist" href="#"><span
															class="glyphicon glyphicon-heart"></span></a></li>
													<li><a class="btn btn-2 compare" href="#"><span
															class="glyphicon glyphicon-transfer"></span></a></li>
												</ul>
											</div>
											<div class="caption">
												<div class="name">
													<h3>
														<a href="product.html">Pretty Playsuit</a>
													</h3>
												</div>
												<div class="price">
													$122<span>$98</span>
												</div>
												<div class="rating">
													<span class="glyphicon glyphicon-star"></span><span
														class="glyphicon glyphicon-star"></span><span
														class="glyphicon glyphicon-star"></span><span
														class="glyphicon glyphicon-star"></span><span
														class="glyphicon glyphicon-star"></span>
												</div>
											</div>
										</div>
									</div>
									<div class="col-sm-4">
										<div class="product">
											<div class="image">
												<a href="product.html"><img
													src="/resources/FashionShop/images/clothing_sp5_1.jpg" /></a>
												<ul class="buttons">
													<li><a class="btn btn-2 cart" href="#"><span
															class="glyphicon glyphicon-shopping-cart"></span></a></li>
													<li><a class="btn btn-2 wishlist" href="#"><span
															class="glyphicon glyphicon-heart"></span></a></li>
													<li><a class="btn btn-2 compare" href="#"><span
															class="glyphicon glyphicon-transfer"></span></a></li>
												</ul>
											</div>
											<div class="caption">
												<div class="name">
													<h3>
														<a href="product.html">Pretty Playsuit</a>
													</h3>
												</div>
												<div class="price">
													$122<span>$98</span>
												</div>
												<div class="rating">
													<span class="glyphicon glyphicon-star"></span><span
														class="glyphicon glyphicon-star"></span><span
														class="glyphicon glyphicon-star"></span><span
														class="glyphicon glyphicon-star-empty"></span><span
														class="glyphicon glyphicon-star-empty"></span>
												</div>
											</div>
										</div>
									</div>
									<div class="col-sm-4">
										<div class="product">
											<div class="image">
												<a href="product.html"><img
													src="/resources/FashionShop/images/clothing_sp12_1.jpg" /></a>
												<ul class="buttons">
													<li><a class="btn btn-2 cart" href="#"><span
															class="glyphicon glyphicon-shopping-cart"></span></a></li>
													<li><a class="btn btn-2 wishlist" href="#"><span
															class="glyphicon glyphicon-heart"></span></a></li>
													<li><a class="btn btn-2 compare" href="#"><span
															class="glyphicon glyphicon-transfer"></span></a></li>
												</ul>
											</div>
											<div class="caption">
												<div class="name">
													<h3>
														<a href="product.html">Pretty Playsuit</a>
													</h3>
												</div>
												<div class="price">
													$122<span>$98</span>
												</div>
												<div class="rating">
													<span class="glyphicon glyphicon-star"></span><span
														class="glyphicon glyphicon-star"></span><span
														class="glyphicon glyphicon-star"></span><span
														class="glyphicon glyphicon-star"></span><span
														class="glyphicon glyphicon-star"></span>
												</div>
											</div>
										</div>
									</div>
									<!-- end inner row -->
								</div>
							</div>
							<div class="col-sm-5 five-two">
								<div class="row">
									<div class="col-sm-6">
										<div class="product">
											<div class="image">
												<a href="product.html"><img
													src="/resources/FashionShop/images/clothing_sp6_1.jpg" /></a>
												<ul class="buttons">
													<li><a class="btn btn-2 cart" href="#"><span
															class="glyphicon glyphicon-shopping-cart"></span></a></li>
													<li><a class="btn btn-2 wishlist" href="#"><span
															class="glyphicon glyphicon-heart"></span></a></li>
													<li><a class="btn btn-2 compare" href="#"><span
															class="glyphicon glyphicon-transfer"></span></a></li>
												</ul>
											</div>
											<div class="caption">
												<div class="name">
													<h3>
														<a href="product.html">Pretty Playsuit</a>
													</h3>
												</div>
												<div class="price">
													$122<span>$98</span>
												</div>
												<div class="rating">
													<span class="glyphicon glyphicon-star"></span><span
														class="glyphicon glyphicon-star"></span><span
														class="glyphicon glyphicon-star-empty"></span><span
														class="glyphicon glyphicon-star-empty"></span><span
														class="glyphicon glyphicon-star-empty"></span>
												</div>
											</div>
										</div>
									</div>
									<div class="col-sm-6">

										<div class="product">
											<div class="image">
												<a href="product.html"><img
													src="/resources/FashionShop/images/clothing_sp3_2.jpg" /></a>
												<ul class="buttons">
													<li><a class="btn btn-2 cart" href="#"><span
															class="glyphicon glyphicon-shopping-cart"></span></a></li>
													<li><a class="btn btn-2 wishlist" href="#"><span
															class="glyphicon glyphicon-heart"></span></a></li>
													<li><a class="btn btn-2 compare" href="#"><span
															class="glyphicon glyphicon-transfer"></span></a></li>
												</ul>
											</div>
											<div class="caption">
												<div class="name">
													<h3>
														<a href="product.html">Pretty Playsuit</a>
													</h3>
												</div>
												<div class="price">
													$122<span>$98</span>
												</div>
												<div class="rating">
													<span class="glyphicon glyphicon-star"></span><span
														class="glyphicon glyphicon-star"></span><span
														class="glyphicon glyphicon-star"></span><span
														class="glyphicon glyphicon-star"></span><span
														class="glyphicon glyphicon-star-empty"></span>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- end inner row -->
							</div>
							<div class="clear"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
		<!-- JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"
		integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
		crossorigin="anonymous"></script>
	<script>
		$(document).ready(function() {
			$(".nav-tabs a").click(function() {
				$(this).tab('show');
			});
			$('.nav-tabs a').on('shown.bs.tab', function(event) {
				var x = $(event.target).text(); // active tab
				var y = $(event.relatedTarget).text(); // previous tab
				$(".act span").text(x);
				$(".prev span").text(y);
			});

			$(".product").on("click", function(e) {
				e.preventDefault();
				
				var pno = $(this).attr("pno");
				
				console.log(pno);
				
				self.location = "/store/register?pno=" + pno;
				
				<!--				var data = {
						<!--	pimg : $(this).attr("pimg"),
						<!--pname : $(this).attr("pname"),
						<!--		price : $(this).attr("price"),
						<!--			pevent : $(this).attr("pevent")	
					<!--		}
				
				<!--		$.ajax({
					<!--			type : 'GET',
					<!--			url : '/store/register',
					<!--			contentType : 'application/json; charset=utf-8',
					<!--			data : JSON.stringify(data),
					
					<!--		})

				-->
				
			});
		});
	</script>
</body>
<%@ include file="include/footer.jsp"%>
</html>

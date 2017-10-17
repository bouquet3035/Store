<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>

<html lang="ko">
<head>

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
<script src="/resources/js/jquery-2.1.1.js"></script>

<!-- Core JavaScript Files -->
<script src="/resources/FashionShop/js/bootstrap.min.js"></script>

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="/resources/FashionShop/js/html5shiv.js"></script>
        <script src="/resources/FashionShop/js/respond.min.js"></script>
    <![endif]-->


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- BootStrap CDN -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<title>게시글 목록</title>
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
			<div id="cart">
				<a class="btn btn-cart" href="cart.html"><span
					class="glyphicon glyphicon-shopping-cart"></span>CART<strong>0</strong></a>
			</div>
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
				<li><a href="index.html">Home</a></li>
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
				<li><a href="category.html">공지사항</a></li>
			</ul>
		</div>
	</div>
	</nav>
	<!-- 게시판 구현   -->
	<!-- 게시판 구현   -->
	<!-- 게시판 구현   -->
	<h3>게시글 목록</h3>
	<button class="btn btn-primary" style="float: right;"
		onclick="location.href='/store/main'">작성</button>

	<table class="table">
		<tr>
			<th>No</th>
			<th>제목</th>
			<th>작성자</th>
			<th>작성날짜</th>
			<th>조회수</th>

<html>
<%@ include file="include/header.jsp"%>
<!-- 게시판 구현   -->
<!-- 게시판 구현   -->
<!-- 게시판 구현   -->
<h3>게시글 목록</h3>
<table class="table">
	<tr>
		<th><select>
				<option class="pageSize" value="5">5개씩 보기</option>
				<option class="pageSize" value="10">10개씩 보기</option>
				<option class="pageSize" value="15" selected="selected">15개씩 보기</option>
				<option class="pageSize" value="20">20개씩 보기</option>
				<option class="pageSize" value="30">30개씩 보기</option>
				<option class="pageSize" value="50">50개씩 보기</option>
		</select></th>
		<th></th>
		<th></th>
		<th></th>
		<th><button class="btn btn-primary" style="float: right;"
				onclick="location.href='/store/main'">작성</button></th>
	</tr>
	<tr>
		<th>No</th>
		<th>제목</th>
		<th>작성자</th>
		<th>작성날짜</th>
		<th>조회수</th>
	</tr>
	<c:forEach var="board" items="${list}">
		<tr class="listUl">
			<td>${board.tno}</td>
			<td><a href="${board.tno}"> ${board.title}</a></td>
			<td>${board.writer}</td>
			<td>${board.regdate}</td>
			<td>${board.viewcount}</td>

		</tr>
	</c:forEach>
</table>

<!-- 페이지네이션   -->
<!-- 페이지네이션   -->
<!-- 페이지네이션   -->
<div class="pageDiv text-center">
	<ul class="pageUl pagination btn btm"></ul>
</div>

<style>
.pageUl li {
	list-style: none;
	margin-left: auto 0;
	width: 3em;
	background-color: lime;
	float: left;
	text-align: center;
	border-radius: 5px;
	background: #3498db;
	background-image: -webkit-linear-gradient(top, #3498db, #2980b9);
	background-image: -moz-linear-gradient(top, #3498db, #2980b9);
	background-image: -ms-linear-gradient(top, #3498db, #2980b9);
	background-image: -o-linear-gradient(top, #3498db, #2980b9);
	background-image: linear-gradient(to bottom, #3498db, #2980b9);
	-webkit-border-radius: 28;
	-moz-border-radius: 28;
	border-radius: 28px;
	font-family: Arial;
	color: #ffffff;
	font-size: 15px;
	padding: 10px 20px 10px 20px;
	text-decoration: none;
	background: #3cb0fd;
	background-image: -webkit-linear-gradient(top, #3cb0fd, #3498db);
	background-image: -moz-linear-gradient(top, #3cb0fd, #3498db);
	background-image: -ms-linear-gradient(top, #3cb0fd, #3498db);
	background-image: -o-linear-gradient(top, #3cb0fd, #3498db);
	background-image: linear-gradient(to bottom, #3cb0fd, #3498db);
	text-decoration: none;
	width: 3em;
	background-color: lime;
	float: left;
	text-align: center;
	border-radius: 5px;
	background: #3498db;
	background-image: -webkit-linear-gradient(top, #3498db, #2980b9);
	background-image: -moz-linear-gradient(top, #3498db, #2980b9);
	background-image: -ms-linear-gradient(top, #3498db, #2980b9);
	background-image: -o-linear-gradient(top, #3498db, #2980b9);
	background-image: linear-gradient(to bottom, #3498db, #2980b9);
	-webkit-border-radius: 28;
	-moz-border-radius: 28;
	border-radius: 28px;
	font-family: Arial;
	color: #ffffff;
	font-size: 15px;
	padding: 10px 20px 10px 20px;
	text-decoration: none;
}

.btm {
	background: #3498db;
	background-image: -webkit-linear-gradient(top, #3498db, #2980b9);
	background-image: -moz-linear-gradient(top, #3498db, #2980b9);
	background-image: -ms-linear-gradient(top, #3498db, #2980b9);
	background-image: -o-linear-gradient(top, #3498db, #2980b9);
	background-image: linear-gradient(to bottom, #3498db, #2980b9);
	-webkit-border-radius: 28;
	-moz-border-radius: 28;
	border-radius: 28px;
	font-family: Arial;
	color: #ffffff;
	font-size: 20px;
	padding: 10px 20px 10px 20px;
	text-decoration: none;
}

.btm:hover {
	background: #3cb0fd;
	background-image: -webkit-linear-gradient(top, #3cb0fd, #3498db);
	background-image: -moz-linear-gradient(top, #3cb0fd, #3498db);
	background-image: -ms-linear-gradient(top, #3cb0fd, #3498db);
	background-image: -o-linear-gradient(top, #3cb0fd, #3498db);
	background-image: linear-gradient(to bottom, #3cb0fd, #3498db);
	text-decoration: none;
}
</style>
<br>
<br>
<form id="actionForm" action="">
	<input type="hidden" name="page" value=${cri.page}> <input
		type="hidden" name="tno">
</form>


<script src="https://code.jquery.com/jquery-3.2.1.min.js"
	integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
	crossorigin="anonymous"></script>

<script type="text/javascript" src="/resources/js/paging.js"></script>

<script type="text/javascript">
		$(document).ready(function() {
			var page = '${cri.page}';
			var actionForm = $('#actionForm');
			$(".listUl td a").on("click", function(e) {
				e.preventDefault();
				var tno = $(this).attr("href");
				actionForm.attr("action", "/store/view");
				actionForm.find('input[name="tno"]').val(tno);
				actionForm.submit();
			});
			
			$(".pageSize").on("click", function(e) {
				e.preventDefault();
				var pageSize = $(this).attr("value");
				console.log(pageSize);
			});
			
			$(".pageUl").on("click", "li", function(e) {
				var pageNum = $(this).attr("name");
				console.log(pageNum);
				
				self.location = "/store/list?page=" + pageNum;
			});
			
			var pageStr = makePage({
		        total:${cri.total},
		        current:${cri.page},
		        pageSize: 10,
		        prevBtn: "<<",
		        nextBtn: ">>"
		    });
			
			$(".pageUl").html(pageStr);
		})
	</script>
</body>
<%@ include file="include/footer.jsp"%>
</html>
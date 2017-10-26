<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ include file="./store/include/header.jsp"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인 페이지</title>
</head>
<body>
	<h1>BARAKAMON APPLICATION LOGIN PAGE</h1>
	<img src="/resources/FashionShop/images/111.jpg">

	<form action="/login" method="post">
		<div class="form-group has-feedback">
			<input type='text' name='mid' class='form-control'
				placeholder='user id' /> <span
				class="glyphicon glyphicon-envelope form-control-feedback"></span>
		</div>
		<div class="form-group has-feedback">
			<input type='password' name='mpw' class='form-control'
				placeholder='password' /> <span
				class="glyphicon glyphicon-envelope form-control-feedback"></span>
		</div>
		<div class="row">
			<div class="col-xs-8">
				<label> <input type="checkbox" name="useCookie">Remember
					Me
				</label>
			</div>
		</div><!-- / .col -->
		<div class="col-xs-4">
		<button type = "submit" class="btn btn-primary btn-block btn-flat">Sign In</button>
		</div>
		 <input
			type="button" value="회원가입" action="/loginreg"> <input type="reset" value="Reset">



	</form>
</body>
<%@ include file="./store/include/footer.jsp"%>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
							<input class="form-inline" type="text" name="email" value="1">
							<button href="#" class="btn btn-4" type="submit">Subcribe</button>
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
					<div class="heading">
						<h4>고객 서비스</h4>
					</div>
					<ul>
						<li><a href="#">About Us</a></li>
						<li><a href="#">배달 정보</a></li>
						<li><a href="#">어플 정보</a></li>
						<li><a href="#">상품 정보</a></li>
						<li><a href="#">Contact Us</a></li>
					</ul>
				</div>
				<div class="col-md-3 col-footer footer-3">
					<div class="heading">
						<h4>My Account</h4>
					</div>
					<ul>
						<li><a href="#">내정보</a></li>
						<li><a href="#">브랜드</a></li>
						<li><a href="#">Gift Vouchers</a></li>
						<li><a href="#">특가상품 배너</a></li>
						<li><a href="#">Site Map</a></li>
					</ul>
				</div>
				<div class="col-md-3 col-footer footer-4">
					<div class="heading">
						<h4>Contact Us</h4>
					</div>
					<ul>
						<li><span class="glyphicon glyphicon-home"></span>Seoul,
							Republic of Korea</li>
						<li><span class="glyphicon glyphicon-earphone"></span>010-XXXX-XXXX</li>
						<li><span class="glyphicon glyphicon-envelope"></span>infor@yoursite.com</li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	</footer>
	</html>
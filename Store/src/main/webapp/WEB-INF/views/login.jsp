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



	<div class="row">
	<div class="col-md-6" style="margin-bottom: 30px;">
						<div class="heading"><h2>Login</h2></div>
						<form name="form1" id="ff1" action="/login" method="post">
							<div class="form-group has-feedback">
								
								<input type="text" class="form-control" placeholder='user id' name='mid' required>
							</div>
							<br>
							<div class="form-group has-feedback">
								<input type="password" class="form-control" placeholder="password" :" name="mpw"  required>
							</div>
							<button type="submit" class="btn btn-2" name="login" id="login">Login</button>
							
						</form>
						
						<div class="row">
							<div class="col-xs-8">
								<label> <input type="checkbox" name="useCookie">Remember Me
								</label>
							</div>
						</div><!-- / .col -->
						
						 <input class="btn btn-2" type="button" value="회원가입" onclick="location.href='/memberregister'"> 
						 <input class="btn btn-2" class="btn btn-2" type="reset" value="Reset">
						<input   class="btn btn-2" type ="button" value="회원탈퇴" onclick = "location.href='/memberout'">
						<input   class="btn btn-2" type ="button" value="개인정보수정" onclick = "location.href='/membermodify'">
	</div>


<div class="col-md-6">
					<div class="heading"><h2>New User ? Create An Account.</h2></div>
					<form name = "person_info"  action ="/memberregister" accept-charset="utf-8"  name = "person_info"  method = "post">
						<div class="form-group">
								<input type="text" class="form-control" placeholder="이름 :"  name = "mname" id="firstname" required>
						</div>
						<div class="form-group">
							<input type = "text" class="form-control" placeholder="아이디 :" name = "mid" id="lastname" required>
						</div>
						
						<div class="form-group">
							<input type = "password" class="form-control" placeholder="패스워드 :" name = "mpw" id="email" required>	
						</div>
						
						<button type="submit" class="btn btn-2" onclick="location.href='/store/main'">회원가입</button>
						
						
                        <input type = "reset"  class="btn btn-2" value = "초기화"/>
					</form>
				</div>
				
		

</div>



<!-- 	
	<img src="/resources/FashionShop/images/111.jpg">

	<form action="/login" method="post">
	<fieldset style = "width:150">
	<legend>BARAKAMON APPLICATION LOGIN PAGE</legend>
		<div class="form-group has-feedback">
			<input type='text' name='mid' class='form-control'placeholder='user id' /> <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
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
		</div>    --> <!-- .col -->
		
		
		<!-- 		<div class="col-xs-4">
		<button type = "submit" class="btn btn-primary btn-block btn-flat">Sign In</button>
		</div>
		 <input type="button" value="회원가입" onclick="location.href='/memberregister'"> <input type="reset" value="Reset">
			<input type ="button" value="회원탈퇴" onclick = "location.href='/memberout'">
			<input type ="button" value="개인정보수정" onclick = "location.href='/membermodify'">


</fieldset>
	</form>
 -->

</body>
<%@ include file="./store/include/footer.jsp"%>
</html>
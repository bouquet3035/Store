<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입 페이지 입니다</title>
</head>
 <body>
        <form action = "/memberregister" accept-charset="utf-8" name = "person_info" method = "post">
            <fieldset style = "width:150">
                <legend>개인 정보 입력</legend>
                   이름 : <input type = "text" name = "mname" required/><br><br>
                  

                   아이디 : <input type = "text" name = "mid" class='form-control' required/><br><br>
                   패스워드 : <input type = "password" name = "mpw" class='form-control' required/><br><br>

                   <input type = "submit" value = "회원가입"/ onclick="location.href='/login'">
                   <input type = "reset" value = "초기화"/><br><br>
            </fieldset> 
        </form>
    </body>
<html>  
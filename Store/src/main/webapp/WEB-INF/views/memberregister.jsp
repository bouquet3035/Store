<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
 <body>
        <form action = "#" accept-charset="utf-8" name = "person_info" method = "get">
            <fieldset style = "width:150">
                <legend>개인 정보 입력</legend>
                   이름 : <input type = "text" name = "name" required/><br><br>
                   주민번호 : <input type = "text" name = "security_number" 
                              pattern = "\d{6}\-\d{7}" 
                              title = "123456-1234567 형식으로 입력해주세요"/><br><br>

                   아이디 : <input type = "text" name = "id"/><br><br>
                   패스워드 : <input type = "password" name = "password"/><br><br>

                   성별 : 남<input type = "radio" name = "gender" />
                          여<input type = "radio" name = "gender" /><br><br>

                   관심사 : 연예<input type = "checkbox" name = "checkbox1" />
                            스포츠<input type = "checkbox" name = "checkbox2" />
                            IT<input type = "checkbox" name = "checkbox3" /><br><br>

                   <input type = "submit" value = "submit"/>
                   <input type = "reset" value = "reset"/><br><br>
            </fieldset> 
        </form>
    </body>
<html>  
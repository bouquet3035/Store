<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>register</h2>
<h2>등록페이지</h2>
<img src="${pinfo.pimg}"/>
<h2>${pinfo.pname }</h2>
<h2>${pinfo.saleprice }</h2>
<h2>${pinfo.pevent }</h2>
<form method="post">
작성자:<input type="text" name="writer" value="tester" readonly="readonly">
 제목:<input type="text" name="title" value="구해요	">
내용:<input type="text" name="contents" value="구합니다">
	<input type="submit"> 
</form>


</body>
</html>
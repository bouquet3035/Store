<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ include file="./store/include/header.jsp"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%String msg = (String) request.getAttribute("MemberDTO");%>
 
<%= msg %> <br>
<h1>메인페이지로 이동하시려면 클릭하셔유</h1>
    <input type = "button" value = "메인으로"
    onclick = "location.href = '/store/main'">
</body>
<%@ include file="./store/include/footer.jsp"%>
</html>


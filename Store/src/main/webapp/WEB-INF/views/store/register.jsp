<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>글쓰기</h2>
	<div>
		<img src="${pinfo.pimg}" />
	</div>
	<div>${pinfo.pname }</div>
	<div>${pinfo.saleprice }원</div>
	<div>${pinfo.pevent }</div>
	<form method="post" id="mainForm">
		<input type="hidden" name="bpno" value="${pinfo.pno}"> <input
			type="hidden" name="bpimg" value="${pinfo.pimg}"> <input
			type="hidden" name="bpname" value="${pinfo.pname}"> <input
			type="hidden" name="bpevent" value="${pinfo.pevent}"> <input
			type="hidden" name="bsaleprice" value="${pinfo.saleprice}"> <input
			type="hidden" name="boriprice" value="${pinfo.oriprice}">
		<div>
			작성자:<input type="text" name="writer" value="tester"
				readonly="readonly">
		</div>
		<div>
			제목:<input type="text" name="title"
				value="${pinfo.pname } 같이 구매하실 분 구해요	">
		</div>
		<div>
			내용:<input type="text" name="contents"
				value="${pinfo.pevent } 이벤트 중인 ${pinfo.pname } 같이 구매하실 분 구합니다">
		</div>
		<input type="submit">
	</form>
	<form action="/store/main" method="get"><button>상품목록</button></form>

</body>
</html>
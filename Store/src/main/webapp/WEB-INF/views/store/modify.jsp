<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ include file="include/header.jsp"%>
<body>
<h1>Modify Page</h1>

<form id='modForm' action = "/store/modify" method='post'>
<h1>${buypro }</h1>
<div>
Tno <input type='text' name='tno' readonly="readonly" value="${tobuy.tno }"> 
</div>
<div>
Title <input type='text' name='title' value="${tobuy.title }"> 
</div>
<div>
Writer <input type='text' name='contents' value="${tobuy.writer }"> 
</div>
<div>
Contents 
</div>
<div>
<textarea name='contents' rows="3" cols="60" maxlength="500">${tobuy.contents }</textarea> 
</div>

<div>
<button class='btn' data-oper='mod'>Modify</button>
<button class='btn' data-oper='li'>List</button>
</div>
<input type='hidden' name='page' value='${cri.page }'>
</form>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"
		integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
		crossorigin="anonymous"></script>
		
<script>		
$(".btn[data-oper='mod']").click(function(e){
	actionForm. attr("action", "/store/list").submit();
	});
</script>
</body>
<%@ include file="include/footer.jsp"%>
</html>
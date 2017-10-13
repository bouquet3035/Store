<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>${cri.page }</h1>
	<h1>${cri.total }</h1>
	<a href="/store/main">상품목록</a>

	<div class="listUl">
		<ul>
			<c:forEach var="tobuy" items="${list}">
				<li>${tobuy.tno }<a href="${tobuy.tno }"> ${tobuy.title }</a>
					${tobuy.replycount} ${tobuy.regdate} ${tobuy.viewcount}
				</li>
			</c:forEach>
		</ul>
	</div>

	<div class="pageDiv">
		<ul class="pageUl"></ul>
	</div>

	<form id="actionForm" action="">
		<input type="hidden" name="page" value=${cri.page }> <input
			type="hidden" name="tno">
	</form>

	<style>
.pageUl li {
	list-style: none;
	margin: 1px;
	width: 2em;
	background-color: lime;
	float: left;
	text-align: center;
	border-radius: 5px;
}
</style>

	<script src="https://code.jquery.com/jquery-3.2.1.min.js"
		integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
		crossorigin="anonymous"></script>

	<script type="text/javascript" src="/resources/js/paging.js"></script>

	<script type="text/javascript">
		$(document).ready(function() {

			var page = '${cri.page}';
			var actionForm = $('#actionForm');

			$(".listUl li a").on("click", function(e) {
				e.preventDefault();

				var tno = $(this).attr("href");

				actionForm.attr("action", "/store/view");
				actionForm.find('input[name="tno"]').val(tno);
				actionForm.submit();

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
		        prevBtn: "이전",
		        nextBtn: "다음"
		    });
			
			$(".pageUl").html(pageStr);

		})
	</script>
</body>
</html>
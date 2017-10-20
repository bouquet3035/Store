<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>

<html>

<%@ include file="include/header.jsp"%>
<!-- 게시판 구현   -->
<!-- 게시판 구현   -->
<!-- 게시판 구현   -->
<h3>게시글 목록</h3>
<table class="table nav navbar-nav">
	<tr>
		<th><select id="pageSize">
				<option class="pageSize" value="5">5개씩 보기</option>
				<option class="pageSize" value="10">10개씩 보기</option>
				<option class="pageSize" value="15" selected="selected">15개씩 보기</option>
				<option class="pageSize" value="20">20개씩 보기</option>
				<option class="pageSize" value="30">30개씩 보기</option>
				<option class="pageSize" value="50">50개씩 보기</option>
		</select></th>
		<th></th>
		<th></th>
		<th></th>
		<th><button class="btn btn-primary" style="float: right;"
				onclick="location.href='/store/main'">모집글 쓰기</button></th>
	</tr></table>
<table class="table nav navbar-nav">
	<tr>
		<th>No</th>
		<th>제목</th>
		<th>작성자</th>
		<th>작성날짜</th>
		<th>조회수</th>
	</tr>
	<c:forEach var="board" items="${list}">
		<tr class="listUl">
			<td>${board.tno}</td>
			<td><a href="${board.tno}"> ${board.title}</a><span class="rcnt">[${board.replycount }]</span></td>
			<td>${board.writer}</td>
			<td>${board.regdate}</td>
			<td>${board.viewcount}</td>

		</tr>
	</c:forEach>
</table>

<!-- 페이지네이션   -->
<!-- 페이지네이션   -->
<!-- 페이지네이션   -->
<div class="pageDiv text-center">
	<ul class="pageUl pagination btn btm"></ul>
</div>

<style>
.rcnt {
color: orange;	
}

.table {

}

.pageUl li {
	list-style: none;
	margin-left: auto 0;
	width: 3em;
	background-color: lime;
	float: left;
	text-align: center;
	border-radius: 5px;
	background: #3498db;
	background-image: -webkit-linear-gradient(top, #3498db, #2980b9);
	background-image: -moz-linear-gradient(top, #3498db, #2980b9);
	background-image: -ms-linear-gradient(top, #3498db, #2980b9);
	background-image: -o-linear-gradient(top, #3498db, #2980b9);
	background-image: linear-gradient(to bottom, #3498db, #2980b9);
	-webkit-border-radius: 28;
	-moz-border-radius: 28;
	border-radius: 28px;
	font-family: Arial;
	color: #ffffff;
	font-size: 15px;
	padding: 10px 20px 10px 20px;
	text-decoration: none;
	background: #3cb0fd;
	background-image: -webkit-linear-gradient(top, #3cb0fd, #3498db);
	background-image: -moz-linear-gradient(top, #3cb0fd, #3498db);
	background-image: -ms-linear-gradient(top, #3cb0fd, #3498db);
	background-image: -o-linear-gradient(top, #3cb0fd, #3498db);
	background-image: linear-gradient(to bottom, #3cb0fd, #3498db);
	text-decoration: none;
	width: 3em;
	background-color: lime;
	float: left;
	text-align: center;
	border-radius: 5px;
	background: #3498db;
	background-image: -webkit-linear-gradient(top, #3498db, #2980b9);
	background-image: -moz-linear-gradient(top, #3498db, #2980b9);
	background-image: -ms-linear-gradient(top, #3498db, #2980b9);
	background-image: -o-linear-gradient(top, #3498db, #2980b9);
	background-image: linear-gradient(to bottom, #3498db, #2980b9);
	-webkit-border-radius: 28;
	-moz-border-radius: 28;
	border-radius: 28px;
	font-family: Arial;
	color: #ffffff;
	font-size: 15px;
	padding: 10px 20px 10px 20px;
	text-decoration: none;
}

.btm {
	background: #3498db;
	background-image: -webkit-linear-gradient(top, #3498db, #2980b9);
	background-image: -moz-linear-gradient(top, #3498db, #2980b9);
	background-image: -ms-linear-gradient(top, #3498db, #2980b9);
	background-image: -o-linear-gradient(top, #3498db, #2980b9);
	background-image: linear-gradient(to bottom, #3498db, #2980b9);
	-webkit-border-radius: 28;
	-moz-border-radius: 28;
	border-radius: 28px;
	font-family: Arial;
	color: #ffffff;
	font-size: 20px;
	padding: 10px 20px 10px 20px;
	text-decoration: none;
}

.btm:hover {
	background: #3cb0fd;
	background-image: -webkit-linear-gradient(top, #3cb0fd, #3498db);
	background-image: -moz-linear-gradient(top, #3cb0fd, #3498db);
	background-image: -ms-linear-gradient(top, #3cb0fd, #3498db);
	background-image: -o-linear-gradient(top, #3cb0fd, #3498db);
	background-image: linear-gradient(to bottom, #3cb0fd, #3498db);
	text-decoration: none;
}
</style>
<br>
<br>
<form id="actionForm" action="" searchByStr="${cri.searchByStr}" searchByInt="${cri.searchByInt}">
	<input type="hidden" name="page" value=${cri.page}> <input
		type="hidden" name="tno">
</form>


<script src="https://code.jquery.com/jquery-3.2.1.min.js"
	integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
	crossorigin="anonymous"></script>

<script type="text/javascript" src="/resources/js/paging.js"></script>

<script type="text/javascript">
		$(document).ready(function() {
			var page = '${cri.page}';
			var actionForm = $('#actionForm');
					
			$(".listUl td a").on("click", function(e) {
				e.preventDefault();
				var tno = $(this).attr("href");
				actionForm.attr("action", "/store/view");
				actionForm.find('input[name="tno"]').val(tno);
				actionForm.submit();
			});
			
			$("#pageSize").change(function() {
				var pageSize = $(this).children("option:selected").val();	
				console.log(pageSize);
				
		//		$(this).attr("action", "/store/list");
		//		$(this).val(pageSize);
	//			$(this).submit();
			});
			
			$(".pageUl").on("click", "li", function(e) {
				var page = $(this).attr("name");
				var searchByStr = actionForm.attr("searchByStr");
				var searchByInt = actionForm.attr("searchByInt")
	
				var pageLink = "/store/list?page=" + page;		
				
				if(searchByStr.length != 0){
					pageLink += "&searchByStr=" + searchByStr;
				}
				
				if(searchByInt.length != 0){
					pageLink += "&searchByInt=" + searchByInt;
				}
						
				self.location = pageLink;
			});
			
			var pageStr = makePage({
		        total:${cri.total},
		        current:${cri.page},
		        pageSize: ${cri.pageSize},
		        prevBtn: "<<",
		        nextBtn: ">>"
		    });
			
			$(".pageUl").html(pageStr);
		})
	</script>
</body>
<%@ include file="include/footer.jsp"%>
</html>
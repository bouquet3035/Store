<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<%@ include file="include/header.jsp"%>
<body>
	<h1>${cobuy }</h1>
	<h1>${buypro}</h1>
	<h1>${tobuy}</h1>
	<h2>${tobuy.tno}</h2>
	<h2>${tobuy.title}</h2>
	<h2>${tobuy.contents}</h2>
	<h2>${tobuy.regdate}</h2>
	<h2>${tobuy.viewcount}</h2>
	<h2>페이지</h2>


	<form action="/store/main" methon="get">
		<button>상품리스트</button>
	</form>

	<form method="post">
		<button>삭제</button>
	</form>



	<form action="/store/modify" method="get">
		<input type="hidden" name="page" value='${cri.page }'> <input
			type='hidden' name='tno' value='${tobuy.tno}'>
		<button>수정</button>
	</form>

	<form action="/store/list" method="get">
		<button>게시판</button>
	</form>

	<div style="border: 1px solid; width: 600px; padding: 5px">
		<form>
			<input type="hidden" id="tno" value="${tobuy.tno }"> 작성자: <input
				type="text" name="replyer" size="20" maxlength="20"
				readonly="readonly" value="tester" id="replyer"> <br />
			<textarea name="reply" rows="3" cols="60" maxlength="500"
				placeholder="댓글을 달아주세요." id="reply"></textarea>
			<a id="replyBtn">저장</a>
		</form>
	</div>

	<div class='replyDiv'>
		<ul class='replyUL'>

		</ul>
	</div>
	<style>
	.modForm {
		display: none;
	}
	
	.canBtn {
		display: none;
	}
	
	</style>

	<script src="https://code.jquery.com/jquery-3.2.1.min.js"
		integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
		crossorigin="anonymous"></script>
	<script>
		function getReplies() {

			var str = "";
			$.getJSON("/reply/list/1?tno=${tobuy.tno}", function(arr) {

				for (var i = 0; i < arr.length; i++) {
					var rno = arr[i].rno;
					str += "<li class='rpl'>"+rno
							+"  "+ arr[i].replyer + "  "+ arr[i].reply+ "  "+ arr[i].tno +
							" <button data-rno ='"+rno +"' class='modBtn modBtn"+rno +"' name='mod'>수정</button>" +
							"<button data-rno ='"+rno +"' class='canBtn canBtn"+rno +"'>취소</button>" +
							" <button data-rno ='"+rno +"' class='delBtn' name='del'>삭제</button></br>" + 
							"<form class='modForm "+ rno +"' action='/reply/"+ rno +"' method='put'>"+
							"<input type='text' class='modRpl"+ rno +"' value='"+ arr[i].reply+
							"'></input><button data-rno ='"+rno +"' class='modAct'>수정</button></form></li>";
				}
				$(".replyUL").html(str);
			});
		}

		$(".cloBtn").click(function(e) {
			$(".popup").hide("slow");
		});

		$(".replyUL").on("click", "li .modBtn", function(e) {
			$(".modForm").hide("slow");
			$(".canBtn").hide();
			$(".modBtn").show();
			
			console.log('mod');

			var rno = $(this).attr("data-rno");
			
			console.log(rno);
			
			var formstr = "."+rno +"";
			var canstr = ".canBtn"+rno +"";
			var modstr = ".modBtn"+rno +"";
			
			$(formstr).show("slow");
			$(canstr).show();
			$(modstr).hide();
			
		});
		
		$(".replyUL").on("click", "li .modForm .modAct", function(e) {
			e.preventDefault();
			
			console.log('mod');

			var rno = $(this).attr("data-rno");
			
			console.log(rno);
			
			var str = ".modRpl"+rno;
			
			var data = {
					reply : $(str).val()
				}
			
			console.log(data);

			$.ajax({
				type : 'PUT',
				url : '/reply/' + rno,
				contentType : 'application/json; charset=utf-8',
				data : JSON.stringify(data),
				success : function(result) {
					alert("Update Success");
					getReplies();
				}
			});
			
		});
		
		$(".replyUL").on("click", "li .canBtn", function(e) {
			var rno = $(this).attr("data-rno");
			
			var formstr = "."+rno +"";
			var canstr = ".canBtn"+rno +"";
			var modstr = ".modBtn"+rno +"";
			
			$(formstr).hide("slow");
			$(canstr).hide();
			$(modstr).show();
		});
		
		$(".replyUL").on("click", "li .delBtn", function(e) {
			
			console.log('del');

			var rno = $(this).attr("data-rno");
			
			console.log(rno);
			
			$.ajax({
				type : 'DELETE',
				url : '/reply/' + rno,
				contentType : 'application/json; charset=utf-8',
				success : function(result) {
					alert("Delete Success");
					getReplies();
				}
			});
		});
		
		getReplies();
		
		$("#replyBtn").click(function(e) {
			e.preventDefault();
			console.log($("#reply").val());
			console.log($("#replyer").val(),);
			console.log($("#tno").val());
			

			var data = {
				reply : $("#reply").val(),
				replyer : $("#replyer").val(), 
				tno:$("#tno").val()
			};
			
			$.ajax({
				type : 'POST',
				url : '/reply/new',
				contentType : "application/json; charset=utf-8",//받는 레코드의 타입
				data : JSON.stringify(data),
				success : function(result) {	
					getReplies();
				}
			})
		});
		
 </script>
	<%@ include file="include/footer.jsp"%>
</body>
</html>
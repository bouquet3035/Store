<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상품상세페이지입니다</title>
</head>
<body>

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
		<form name="form1" action="/reply/*" method="post">
			<input type="hidden" id="tno"
				value="${tobuy.tno }"> 작성자: 
				<input
				type="text" name="replyer" size="20" maxlength="20" readonly="readonly" value="tester" id="replyer"> <br />
			<textarea name="reply" rows="3" cols="60" maxlength="500"
				placeholder="댓글을 달아주세요." id="reply"></textarea>
			<a id="replyBtn">저장</a>
		</form>
	</div>

	<div class='replyDiv'>
		<ul class='replyUL'>

		</ul>
	</div>



	<script src="https://code.jquery.com/jquery-3.2.1.min.js"
		integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
		crossorigin="anonymous"></script>
	<script>
		function getReplies() {

			var str = "";
			$.getJSON("/reply/list/1", function(arr) {

				for (var i = 0; i < arr.length; i++) {
					str += "<li data-rno ='"+arr[i].rno +"'>"+arr[i].rno
							+"  "+ arr[i].reply + "</li>";
				}
				$(".replyUL").html(str);

			});
		}

		$(".cloBtn").click(function(e) {
			$(".popup").hide("slow");
		});

		$(".replyUL").on("click", "li", function(e) {

			var rno = $(this).attr("data-rno");

			$.getJSON("/store/view" + rno, function(replyObj) {

	<!--			$(".popup input[name='rno']").val(replyObj.rno);-->
	<!--			$(".popup input[name='reply']").val(replyObj.reply);-->
	<!--			$(".popup input[name='replyer']").val(replyObj.replyer);-->
				
			});

		});
		getReplies();

		$("#replyBtn").click(function(e) {
			e.preventDefault();
			console.log("button clicked");

			var data = {
				reply : $("#reply").val(),
				replyer : $("#replyer").val(), 
				tno:$("#tno").val()
			};

			$.ajax({
				url : '/reply/new',
				type : 'POST',
				dataType : "application/json; charset=utf-8",//받는 레코드의 타입
				data : JSON.stringify(data),
				success : function(result) {

				alert("success");	
					getReplies();
					<!--		$(".popup").hide("hide");-->
				}
			})
		});
 </script>
</body>
</html>







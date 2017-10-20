<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<%@ include file="include/header.jsp"%>
<body>
	<div class='cobuyDiv'>
		<ul class='cobuyUL'>

		</ul>
	</div>
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
	<div class='replyDiv'>
		<ul class='replyUL'>
		
		

		</ul>
	</div>
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
	
	<form  class="participateBtn">
		<button> 참여하기</button>
	</form>


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
	<script type="text/javascript" src="/resources/js/reply.js"></script>
	
	
	<script>
	var tno = $("#tno").val();
		makeReplies(tno);
		
		function getCobuy() {
			console.log(tno);
			var str=""

			$.getJSON("/participate/itemlist/?tno=" + tno, function(e){
				str += "<li>ono주문번호 ="+ e.ono + "</li>";
				str += "<li>bpno 상품번호= "+ e.bpno+ "</li>"; 
				str += "<li> 이미지 url: "+ e.bpimg+ "</li>";
				str += "<li> 상품이름:"+ e.bpname+ "</li>"; 
				str += "<li> 행사이름:"+ e.bpevent+ "</li>"; 
				str += "<li> 행사 가격:"+ e.bsaleprice+ "</li>"; 
				str += "<li> 원래 가격:"+ e.boriprice+ "</li>"; 
				str += "<li> tno:"+ e.tno+ "</li>";
				str += "<li> 현재인원 : "+ e.curpeople+ "</li>"; 
				str += "<li> 최대인원:"+ e.maxpeople+ "</li>"; 
				str += "<li> 등록날짜 :"+ e.oregdate+ "</li>"; 
				str += "<form ><button  class='participateBtn' ono = "+ e.ono +"> 참여하기</button></form>";
								
				$(".cobuyUL").html(str);
		
			});

		}
		getCobuy();
		
	
	
		$(".cobuyUL").on("click", "form .participateBtn",function(e){
			e.preventDefault();
			console.log("참여");
			console.log("ono :"+ $(this).attr("ono"));
			
			var data = {
				 ono :$(this).attr("ono"),
				 mname : "test2"
			};
			$.ajax({
				type:'POST',
				url: '/participate/new',
				contentType : "application/json; charset=utf-8",// 받는 레코드의 타입
				data : JSON.stringify(data),
				success:function(result){
					alert("성공"); 
					getCobuy();
				}
			})
			
			
			
			
		});
	

	</script>
	<%@ include file="include/footer.jsp"%>
</body>
</html>
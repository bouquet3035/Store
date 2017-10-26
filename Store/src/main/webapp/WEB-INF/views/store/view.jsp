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

	<style>
.hide {
	display: none;
}
</style>



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
			<input type="hidden" id="tno" value="${tobuy.tno }"> 
			<input type="hidden" name="replyer" readonly="readonly" value="${memberDTO.mname }" id="replyer">
			<input type="hidden" name="mid" readonly="readonly" value="${memberDTO.mid }" id="mid">
			<textarea name="reply" rows="3" cols="60" maxlength="500" placeholder="댓글을 달아주세요." id="reply"></textarea>
			<br />
			<button>
				<a id="replyBtn">댓글달기</a>
			</button>
		</form>
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
	<script type="text/javascript" src="/resources/js/reply.js"></script>


	<script>
	var tno = $("#tno").val();
		makeReplies(tno);
		var mid = $("#mid").val();
		var mname = $("#replyer").val();

		function getBuyPro() {
			var str=""
			
			$.getJSON("/participate/itemlist?tno=" + tno, function(arr){
				
				for (var i = 0; i < arr.length; i++) {					
					str += "<li><img src='"+ arr[i].bpimg+ "'>"
					+ "상품이름:"+ arr[i].bpname
					+ ", 행사이름:"+ arr[i].bpevent
					+ ", 행사 가격:"+ arr[i].bsaleprice
					+ "원, 참여자("+ arr[i].curpeople+ "/"+ arr[i].maxpeople+ "): ";

					for (var j = 0; j < arr[i].mname.length; j++) {
						if(j > 0){
							str += ", "
						}
						str += arr[i].mname[j]; 
					}
					
					if(arr[i].bpexpired == true){
						
					}else {
						str += "<form ><button class='participateBtn' ono = "+ arr[i].ono +" mid='" + mid + "' mname='" + mname + "'> 참여하기</button></form>";
					}
					str += "</li>";
				}
				
				$(".cobuyUL").html(str);
			});

		}
		
		getBuyPro();
		
		$(".cobuyUL").on("click", "form .participateBtn",function(e){
			e.preventDefault();
			console.log("참여");
			console.log("ono :"+ $(this).attr("ono"));
			
			var data = {
				 ono :$(this).attr("ono"),
				 mname : $(this).attr("mname"),
				 mid: $(this).attr("mid")
			};
			$.ajax({
				type:'POST',
				url: '/participate/new',
				contentType : "application/json; charset=utf-8",// 받는 레코드의 타입
				data : JSON.stringify(data),
				success:function(result){
					alert("성공"); 
					getBuyPro();
				}
			});
		});
	

	</script>
	<%@ include file="include/footer.jsp"%>
</body>
</html>
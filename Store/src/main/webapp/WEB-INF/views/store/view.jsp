<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<%@ include file="include/header.jsp"%>
<body>
<style>
	.main{
		
		
		margin-left: 200px;
		margin-right: 200px
	
	}
</style>
<div id="main-content" class="col-md main ">
			<div class="product">
				<div class="col-md-6">
					<div class="image">
						<center><img style="margin-top: 50px;" src="https://4.bp.blogspot.com/-F6VIVavVz1k/WeB-JivmjPI/AAAAAAAAACs/CrQgL2H7ii8OPSCYT-GgMI0ZleYjrWHtQCLcBGAs/s1600/20171010_152342_23.png " /></center>
						<div class="image-more">
							 <ul class="row">
								<li class="col-lg-3 col-sm-3 col-xs-4">
									<a href="#"><img class="img-responsive" src="https://4.bp.blogspot.com/-F6VIVavVz1k/WeB-JivmjPI/AAAAAAAAACs/CrQgL2H7ii8OPSCYT-GgMI0ZleYjrWHtQCLcBGAs/s1600/20171010_152342_23.png"></a>
								</li>
								<li class="col-lg-3 col-sm-3 col-xs-4">
									<a href="#"><img class="img-responsive" src="https://4.bp.blogspot.com/-F6VIVavVz1k/WeB-JivmjPI/AAAAAAAAACs/CrQgL2H7ii8OPSCYT-GgMI0ZleYjrWHtQCLcBGAs/s1600/20171010_152342_23.png"></a>
								</li>
								 <li class="col-lg-3 col-sm-3 col-xs-4">
									<a href="#"><img class="img-responsive" src="https://4.bp.blogspot.com/-F6VIVavVz1k/WeB-JivmjPI/AAAAAAAAACs/CrQgL2H7ii8OPSCYT-GgMI0ZleYjrWHtQCLcBGAs/s1600/20171010_152342_23.png"></a>
								</li>
								<li class="col-lg-3 col-sm-3 col-xs-4">
									<a href="#"><img class="img-responsive" src="https://4.bp.blogspot.com/-F6VIVavVz1k/WeB-JivmjPI/AAAAAAAAACs/CrQgL2H7ii8OPSCYT-GgMI0ZleYjrWHtQCLcBGAs/s1600/20171010_152342_23.png"></a>
								</li>
							</ul>
						</div>
					</div>
					
				</div>
				<div class="col-md-6">
							<div class="caption ">
								<div class="title">제목:${tobuy.title }</div>
								<div class="writer">작성자 :${tobuy.writer}</div>
								<div class="date">작성날짜:${tobuy.regdate}</div>
								<div class="rating"><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star-empty"></span></div>
								<div class="info">
									<ul>
										<li>Brand: gs25</li>
									</ul>
								</div>
								<div class="price">3000원<span>5000원</span></div>

							<div >
								<form action="/store/list" method="get">
									<button class="btn btn-2" >상품목록</button>
								</form>
							</div>
							<div >
								<form action="/store/main" method="get">
									<button class="btn btn-2" >상품보기(홈화면)</button>
								</form>
							</div>
							
							<div >
							<c:if test="${memberDTO.mid == tobuy.mid }">
								<form method="post">
									<button class="btn btn-2">삭제</button>
								</form>
							</div>
								<div>
									<form action="/store/modify" method="get">
										<input type="hidden" name="page" value='${cri.page }'>
										<input type='hidden' name='tno' value='${tobuy.tno}'>
										<button class="btn btn-2">수정</button>
									</form>
							</c:if>
							</div>
							
							
								<div class="well">
																																									
								내용
								<br>
								<style>
									.contents{text-align:center;} 
								</style>
								<textarea  class="form-control " name="contents" rows="4" cols="50" maxlength="600" readonly="readonly" >${tobuy.contents}</textarea>
											
								</div>
							
								
								<div class="share well">
									<strong style="margin-right: 13px;">Share :</strong>
									<a href="#" class="share-btn" target="_blank">
										<i class="fa fa-twitter"></i>
									</a>
									<a href="#" class="share-btn" target="_blank">
										<i class="fa fa-facebook"></i>
									</a>
									<a href="#" class="share-btn" target="_blank">
										<i class="fa fa-linkedin"></i>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>






	<!--
	<div class='cobuyDiv'>
		<ul class='cobuyUL'>

		</ul>
	</div>
	<h1>${tobuy}</h1>
	<h2>${tobuy.tno}</h2>
	<h2>${tobuy.title}</h2>
	<h2>${tobuy.contents}</h2>
	<h2>${tobuy.regdate}</h2>
	<h2>${tobuy.viewcount}</h2>
	<h2>페이지</h2>
	 -->

<style>
.hide {
	display: none;
}

</style>

	<!-- 

		<form action="/store/main" methon="get">
			<button>상품리스트</button>
		</form>


<c:if test="${memberDTO.mid == tobuy.mid }">

		<form method="post">
			<button>삭제</button>
		</form>



		<form action="/store/modify" method="get">
			<input type="hidden" name="page" value='${cri.page }'> <input
				type='hidden' name='tno' value='${tobuy.tno}'>
			<button>수정</button>
		</form>

	</c:if>

	
	<form action="/store/list" method="get">
		<button>게시판</button>
	</form>
	
-->
<style>
	.replyDiv{
		margin-left: 200px;
		margin-right: 200px
	}
	.reple{
		margin-left: 200px;
		margin-right: 200px
	}
</style>

	<div class='replyDiv'>
		<ul class='replyUL'>

		</ul>
	</div>
	
	
	<div class="reple"  style="border: 1px solid; width: 600px; padding: 5px">
		<form>
			<input type="hidden" id="tno" value="${tobuy.tno }">
			 <input type="hidden" name="replyer" readonly="readonly"value="${memberDTO.mname }" id="replyer"> 
			 <input type="hidden" name="mid" readonly="readonly" value="${memberDTO.mid }" id="mid">
				<textarea name="reply" rows="3" cols="60" maxlength="500"
					placeholder="댓글을 달아주세요." id="reply"></textarea>
				<br>
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
.brand{
	margin-top: 5%;
}
</style>


<div class="brand">
			<div class="container">
				<div class="row">
					<div class="col-lg-3 col-xs-6">
						<a href="#"><img src="http://3.bp.blogspot.com/-xnHM9ZFhBTs/We7DBIS29BI/AAAAAAAAADQ/WxTfn8iX8LEIaJAu_lS7lscAmLV5-XN1gCK4BGAYYCw/s1600/gs25%25EB%25A1%259C%25EA%25B3%25A0.jpg" /></a>
					</div>
					<div class="col-lg-3 col-xs-6">
						<a href="#"><img src="http://4.bp.blogspot.com/-RxQs5gsvOPQ/We7DYhp50vI/AAAAAAAAADY/79O5w7zg0mANW3hgeZ1rZhhsfU7q7AixwCK4BGAYYCw/s1600/seveneleven.png" /></a>
					</div>
					<div class="col-lg-3 col-xs-6">
						<a href="#"><img src="http://4.bp.blogspot.com/-N7aCIgtLASo/We7EtTeO8kI/AAAAAAAAADs/idaEBnmfxy4m0OUVnBOMPSPR5SlM0JYlQCK4BGAYYCw/s1600/%25EB%25AF%25B8%25EB%258B%2588%25EC%258A%25A4%25ED%2586%25B1.png" /></a>
					</div>
					<div class="col-lg-3 col-xs-6">
						<a href="#"><img src="http://4.bp.blogspot.com/-hGH6pug_sLU/We7EbtCln5I/AAAAAAAAADk/OEcbddZGaEE0VScNHu13zNSAf7DiKTwjACK4BGAYYCw/s1600/cu.jpg" /></a>
					</div>
				</div>
			</div>
		</div>
	</div>


	<script src="https://code.jquery.com/jquery-3.2.1.min.js"
		integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
		crossorigin="anonymous"></script>
	<script type="text/javascript" src="/resources/js/reply.js"></script>


	<script>
		var tno = $("#tno").val();
		var mid = $("#mid").val();
		var mname = $("#replyer").val();

		var replyStr = makeReplies({
			tno: tno,
			mid: mid
		})
		
		function getBuyPro() {
			var str = ""

			$.getJSON("/participate/itemlist?tno=" + tno,
							function(arr) {

								for (var i = 0; i < arr.length; i++) {
									str += "<li><img src='"+ arr[i].bpimg+ "'>"
											+ "상품이름:" + arr[i].bpname
											+ ", 행사이름:" + arr[i].bpevent
											+ ", 행사 가격:" + arr[i].bsaleprice
											+ "원, 참여자(" + arr[i].curpeople
											+ "/" + arr[i].maxpeople + "): ";

									for (var j = 0; j < arr[i].mname.length; j++) {
										if (j > 0) {
											str += ", "
										}
										str += arr[i].mname[j];
									}

									if (arr[i].bpexpired == true) {

									} else {
										str += "<form ><button class='participateBtn' ono = "+ arr[i].ono +" mid='" + mid + "' mname='" + mname + "'> 참여하기</button></form>";
									}
									str += "</li>";
								}

								$(".cobuyUL").html(str);
							});

		}

		getBuyPro();

		$(".cobuyUL").on("click", "form .participateBtn", function(e) {
			e.preventDefault();
			console.log("참여");
			console.log("ono :" + $(this).attr("ono"));

			var data = {
				ono : $(this).attr("ono"),
				mname : $(this).attr("mname"),
				mid : $(this).attr("mid")
			};
			$.ajax({
				type : 'POST',
				url : '/participate/new',
				contentType : "application/json; charset=utf-8",// 받는 레코드의 타입
				data : JSON.stringify(data),
				success : function(result) {
					alert("성공");
					getBuyPro();
				}
			});
		});
	</script>
	<%@ include file="include/footer.jsp"%>
</body>
</html>
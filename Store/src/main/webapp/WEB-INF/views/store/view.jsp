<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<%@ include file="include/header.jsp"%>
<body>
	<style>
.main {
	margin-left: 200px;
	margin-right: 200px
}

.btn-in-oneline {
	float: right;
}
</style>

	<div class="row">
		<div class="col-lg-12">
			<ul class="breadcrumb">
				<li>${tobuy.title }</li>
			</ul>
			<ul class="breadcrumb">
				<li>작성자: <b>${tobuy.mname}</b>
				</li>
				<li>날짜: ${tobuy.bregdate}</li>
				<li>조회수: ${tobuy.viewcount}</li>
			</ul>
		</div>
	</div>
	<div class='cobuyDiv'>
		<ul class='cobuyUL'>

		</ul>
	</div>
	<div class="product-desc">
		<ul class="nav nav-tabs">
			<li class="active"><a>내용</a></li>
		</ul>
		<div class="tab-content">
			<div id="description" class="tab-pane fade in active">
				${tobuy.contents}</div>
		</div>
	</div>
	<ul>
		<li class="btn-in-oneline">
			<div>
				<form action="/store/list" method="get">
					<button class="btn btn-2">게시판</button>
				</form>
			</div>
		</li>
		<li class="btn-in-oneline">
			<div>
				<form action="/store/main" method="get">
					<button class="btn btn-2">상품목록</button>
				</form>
			</div>
		</li>
		<c:if test="${memberDTO.mid == tobuy.mid }">
			<li class="btn-in-oneline">
				<div>
					<form method="post">
						<button class="btn btn-2">삭제</button>
					</form>
				</div>
			</li>
			<li class="btn-in-oneline">
				<div>
					<form action="/store/modify" method="get">
						<input type="hidden" name="page" value='${cri.page }'> <input
							type='hidden' name='tno' value='${tobuy.tno}'>
						<button class="btn btn-2">수정</button>
					</form>
				</div>
			</li>
		</c:if>
	</ul>
	<div class="product-desc">
		<ul class="nav nav-tabs">
			<li class="active"><a>댓글</a></li>
		</ul>
		<div class="tab-content">
			<div id="description" class="tab-pane fade in active">
				<div class="review-text">
					<div class='replyDiv'>
						<ul class='replyUL'>

						</ul>
					</div>

				</div>
				<div class="review-form">
					<form name="form1" id="ff" method="post">
						</label> <label> <span>Your message here:</span> <input
							type="hidden" id="tno" value="${tobuy.tno }"> <input
							type="hidden" name="mname" readonly="readonly"
							value="${memberDTO.mname }" id="mname"> <input
							type="hidden" name="mid" readonly="readonly"
							value="${memberDTO.mid }" id="mid"> <textarea
								name="reply" id="reply" placeholder="댓글을 달아주세요."></textarea>
						</label>
						<center>
							<a id="replyBtn"><input class="btn btn-2" type="submit"
								name="Submit" value="댓글달기"></a>
						</center>
					</form>
				</div>
			</div>
		</div>
	</div>
	<div class="brand">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-xs-6">
					<a href="#"><img
						src="http://3.bp.blogspot.com/-xnHM9ZFhBTs/We7DBIS29BI/AAAAAAAAADQ/WxTfn8iX8LEIaJAu_lS7lscAmLV5-XN1gCK4BGAYYCw/s1600/gs25%25EB%25A1%259C%25EA%25B3%25A0.jpg" /></a>
				</div>
				<div class="col-lg-3 col-xs-6">
					<a href="#"><img
						src="http://4.bp.blogspot.com/-RxQs5gsvOPQ/We7DYhp50vI/AAAAAAAAADY/79O5w7zg0mANW3hgeZ1rZhhsfU7q7AixwCK4BGAYYCw/s1600/seveneleven.png" /></a>
				</div>
				<div class="col-lg-3 col-xs-6">
					<a href="#"><img
						src="http://4.bp.blogspot.com/-N7aCIgtLASo/We7EtTeO8kI/AAAAAAAAADs/idaEBnmfxy4m0OUVnBOMPSPR5SlM0JYlQCK4BGAYYCw/s1600/%25EB%25AF%25B8%25EB%258B%2588%25EC%258A%25A4%25ED%2586%25B1.png" /></a>
				</div>
				<div class="col-lg-3 col-xs-6">
					<a href="#"><img
						src="http://4.bp.blogspot.com/-hGH6pug_sLU/We7EbtCln5I/AAAAAAAAADk/OEcbddZGaEE0VScNHu13zNSAf7DiKTwjACK4BGAYYCw/s1600/cu.jpg" /></a>
				</div>
			</div>
		</div>
	</div>
	<!--
	<div class='replyDiv'>
		<ul class='replyUL'>

		</ul>
	</div>

	<form>
		<input type="hidden" id="tno" value="${tobuy.tno }"> <input
			type="hidden" name="replyer" readonly="readonly"
			value="${memberDTO.mname }" id="replyer"> <input
			type="hidden" name="mid" readonly="readonly"
			value="${memberDTO.mid }" id="mid">
		<textarea name="reply" rows="3" cols="60" maxlength="500"
			placeholder="댓글을 달아주세요." id="reply"></textarea>
		<br>
		<button>
			<a id="replyBtn">댓글달기</a>
		</button>
	</form>



	
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
.hide {
	display: none;
}

.modForm {
	display: none;
}

.canBtn {
	display: none;
}

.brand {
	margin-top: 5%;
}

.maxedout {
	color: red;
}
</style>
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"
		integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
		crossorigin="anonymous"></script>
	<script type="text/javascript" src="/resources/js/reply.js"></script>
	<script>
		var tno = $("#tno").val();
		var mid = $("#mid").val();
		var mname = $("#mname").val();

		var replyStr = makeReplies({
			tno : tno,
			mid : mid
		})

		function getBuyPro() {
			var str = ""

			$.getJSON(
							"/participate/itemlist?tno=" + tno,
							function(arr) {

								for (var i = 0; i < arr.length; i++) {
									str += "<li><div id='main-content' class='col-md main '>" +
									"<div class='product'><div class='col-md-6'><div class='image'>"+
									"<center><img style='margin-top: 50px;' src='"+ arr[i].pimg+ "'/></center>" +
									"</div></div><div class='col-md-6'><div class='caption '><div>상품: " +
									arr[i].pname + "</div><div>행사: " + arr[i].pevent + "</div><div>개당가격: " + arr[i].bsaleprice + "원" +
									"</div><div class='well'><div>참여자(<a";
									
									if(arr[i].curpeople >= arr[i].maxpeople){
										str += " class='maxedout'";
									}

									str += ">" + arr[i].curpeople + "/" + arr[i].maxpeople + "</a>): </div>";

									for (var j = 0; j < arr[i].mname.length; j++) {
										if (j > 0) {
											str += ", </div>"
										}
										str += "<div>" + arr[i].mname[j];
									}


									if (arr[i].oexpired == true) {

									} else {
										str += "<form ><button class='participateBtn btn btn-2' ono = "+ arr[i].ono +" mid='" + mid + "' mname='" + mname + "'> 참여하기</button></form>";
									}
									str += "</div></div><div class='share well'><strong style='margin-right: 13px;'>Share :</strong> <a href='#'" +
									" class='share-btn' target='_blank'> <i class='fa fa-twitter'></i>" + 
									"</a> <a href='#' class='share-btn' target='_blank'> <i class='fa fa-facebook'></i>" + 
									"</a> <a href='#' class='share-btn' target='_blank'> <i class='fa fa-linkedin'></i></a></div></div></div></div></li>";
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
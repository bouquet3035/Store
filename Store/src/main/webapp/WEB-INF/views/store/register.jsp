<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ include file="include/header.jsp"%>
<head>
<style>
.main {
	float: left;
	margin-left: 30px;
	margin-right: 30px;
}

.sidebar {
	float: left;
	margin-left: 30px;
	margin-right: 30px;
}

.btn-in-oneline {
	float: left;
}

.rsbtn {
	
}
</style>

</head>
<body>
	<!-- 메인화면  -->
	<div id="main-content" class="col-md-8 main ">
		<div class="product">
			<div class="col-md-6">
				<div class="image">
					<center>
						<img style="margin-top: 50px;" src="${pinfo.pimg}, " />
					</center>
				</div>
			</div>
			<div class="col-md-6">
				<div class="caption ">
					<div class="name">
						<h2>${pinfo.pname}(${pinfo.pevent})</h2>
					</div>
					<div class="event">
						<h3>${pinfo.pevent}행사</h3>
					</div>
					<div class="price">${pinfo.saleprice }원<span></span>
					</div>

					<div class="options well">
						인원 체크 박스 <select>
							<option value="" selected>----인원체크박스 ----</option>
							<option value="red">1</option>
							<option value="black">2</option>
						</select>
					</div>
					<ul>
						<li class="btn-in-oneline">
							<div>
								<form action="/store/main" method="get">
									<button class="btn btn-2">상품목록</button>
								</form>
							</div>
						</li>
						<li>
							<div>
								<form action="/store/list" method="get">
									<input type="hidden" name="searchType" value="bpno"><input
										type="hidden" name="keyword" value="${pinfo.pno}">
									<button type="submit" class="btn btn-2">구매자 검색</button>
								</form>
							</div>
						</li>
					</ul>
					<form method="post" id="mainForm">
						<div class="well">
							<input name="writer" value="${memberDTO.mname }"
								readonly="readonly" type="hidden"> <input name="mid"
								value="${memberDTO.mid }" readonly="readonly" type="hidden"><input
								type="hidden" name="bpno" value="${pinfo.pno}"> <input
								type="hidden" name="bpimg" value="${pinfo.pimg}"><input
								type="hidden" name="bpname" value="${pinfo.pname}"><input
								type="hidden" name="bpevent" value="${pinfo.pevent}"><input
								type="hidden" name="bsaleprice" value="${pinfo.saleprice}"><input
								type="hidden" name="boriprice" value="${pinfo.oriprice}">제목<input
								type="text" class="form-control" placeholder="Username :"
								name="title" id="username" required
								value="${pinfo.pname }같이 구매하실분 구해요 "> <br> 내용 <br>
							<textarea class="form-control" name="contents" rows="3" cols="60"
								maxlength="500" placeholder="내용을 적어주세요 " id="reply">${pinfo.pname} 같이 사실분(기본메세지)</textarea>
							<button class="btn btn-2 rsbtn">등록 버튼</button>
						</div>
					</form>

					<div class="share well">
						<strong style="margin-right: 13px;">Share :</strong> <a href="#"
							class="share-btn" target="_blank"> <i class="fa fa-twitter"></i>
						</a> <a href="#" class="share-btn" target="_blank"> <i
							class="fa fa-facebook"></i>
						</a> <a href="#" class="share-btn" target="_blank"> <i
							class="fa fa-linkedin"></i>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 메인화면 END -->

	<!-- SideBar  -->
	<div>
		<div id="sidebar" class="col-md-3 sidebar">
			<div class="widget wid-categories">
				<div class="heading">
					<h4>CATEGORIES</h4>
				</div>
				<div class="content">
					<ul>
						<li><a href="#">1+1행사</a></li>
						<li><a href="#">2+1행사</a></li>
						<li><a href="#">2+2행사</a></li>
						<li><a href="#">할인상품</a></li>
						<li><a href="/store/list">공동구매 게시판</a></li>
					</ul>
				</div>
			</div>

			<div class="widget wid-discouts">
				<div class="heading">
					<h4>DISCOUNTS</h4>
				</div>
				<div class="content">
					<label class="checkbox"><input type="checkbox"
						name="discount" checked="">Upto - 10% (20)</label> <label
						class="checkbox"><input type="checkbox" name="discount">40%
						- 50% (5)</label> <label class="checkbox"><input type="checkbox"
						name="discount">30% - 20% (7)</label> <label class="checkbox"><input
						type="checkbox" name="discount">10% - 5% (2)</label> <label
						class="checkbox"><input type="checkbox" name="discount">Other(50)</label>
				</div>
			</div>
		</div>
		<!-- sideBar End -->



		<!-- 예전코드 보존  -->
		<!--  	<h2>글쓰기</h2>
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
		
	
	
	<div>

	<form action="/store/main" method="get"><button>상품목록</button></form>
	<form action="/store/list" method="get"><input type="hidden" name="searchType" value="bpno"><input type="hidden" name="keyword" value="${pinfo.pno}"><input type="submit" value="구매자검색"></form>
	-->
		<!-- 예전코드 보존 end  -->
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
	</div>


</body>
<%@ include file="include/footer.jsp"%>
</html>


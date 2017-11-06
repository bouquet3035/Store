<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ include file="include/header.jsp"%>
<body>
<h1>Modify Page</h1>



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
								<div class="mname">작성자 :${tobuy.mname}</div>
								<div class="date">작성날짜:${tobuy.regdate}</div>
								<div class="rating"><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star-empty"></span></div>
								<div class="info">
									<ul>
										<li>Brand: gs25</li>
									</ul>
								</div>
								<div class="price">3000원<span>5000원</span></div>

							
							
									<form id='modForm' action = "/store/modify" method='post'>
									<h1>${buypro }</h1>
									<div>
									Bno <input type='text' name='bno' readonly="readonly" value="${tobuy.bno }"> 
									</div>
									<div>
									Title <input type='text' name='title' value="${tobuy.title }"> 
									</div>
									<div>
									Mname <input type='text' name='content' value="${tobuy.mname }"> 
									</div>
									<div>
									Contents 
									</div>
									<div class="well">
									<textarea  wrap="soft"  class="form-control contents" name="contents" rows="4" cols="50" maxlength="600"  >${tobuy.contents }</textarea> 
									</div>
									
									<div>
									<button class='btn btn-2' data-oper='mod'>Modify</button>
									<button class='btn btn-2' data-oper='li'>List</button>
									</div>
									<input type='hidden' name='page' value='${cri.page }'>
									</form>
							
							
								
							
								
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
 -->















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
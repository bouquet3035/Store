function makeReplies(param) {
	
	var tno = param;
	
	function getReplies() {

		var str = "";
		$.getJSON("/reply/list/1?tno=" + tno, function(arr) {

			for (var i = 0; i < arr.length; i++) {
				var rno = arr[i].rno;
				str += "<li class='rpl'>" + rno + "  " + arr[i].replyer + "  "
						+ arr[i].reply + "  " + arr[i].tno
						+ " <button data-rno ='" + rno
						+ "' class='modBtn modBtn" + rno
						+ "' name='mod'>수정</button>" + "<button data-rno ='"
						+ rno + "' class='canBtn canBtn" + rno
						+ "'>취소</button>" + " <button data-rno ='" + rno
						+ "' class='delBtn' name='del'>삭제</button></br>"
						+ "<form class='modForm " + rno + "' action='/reply/"
						+ rno + "' method='put'>"
						+ "<input type='text' class='modRpl" + rno
						+ "' value='" + arr[i].reply
						+ "'></input><button data-rno ='" + rno
						+ "' class='modAct'>수정</button></form></li>";
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

		var formstr = "." + rno + "";
		var canstr = ".canBtn" + rno + "";
		var modstr = ".modBtn" + rno + "";

		$(formstr).show("slow");
		$(canstr).show();
		$(modstr).hide();

	});

	$(".replyUL").on("click", "li .modForm .modAct", function(e) {
		e.preventDefault();

		console.log('mod');

		var rno = $(this).attr("data-rno");

		console.log(rno);

		var str = ".modRpl" + rno;

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
				getReplies();
			}
		});

	});

	$(".replyUL").on("click", "li .canBtn", function(e) {
		var rno = $(this).attr("data-rno");

		var formstr = "." + rno + "";
		var canstr = ".canBtn" + rno + "";
		var modstr = ".modBtn" + rno + "";

		$(formstr).hide("slow");
		$(canstr).hide();
		$(modstr).show();
	});

	getReplies();
	$("#modBtn").click(function(e) {
		e.preventDefault();
		console.log("mod has been clicked");
	});
	$("#replyBtn").click(function(e) {
		e.preventDefault();
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
				getReplies();
			}
		});
	});

	getReplies();

	$("#replyBtn").click(function(e) {
		e.preventDefault();

		var data = {
			reply : $("#reply").val(),
			replyer : $("#replyer").val(),
			tno : tno
		};

		$.ajax({
			type : 'POST',
			url : '/reply/new',
			contentType : "application/json; charset=utf-8",// 받는 레코드의 타입
			data : JSON.stringify(data),
			success : function(result) {
				$("#reply").val("");
				getReplies();
			}
		});
	});
}
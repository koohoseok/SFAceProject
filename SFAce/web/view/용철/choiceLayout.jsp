<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script src="../../jQuery/jquery.bxslider.js"></script>
<link href="../../jQuery/jquery.bxslider.css" rel="stylesheet" />
<script type="text/javascript">
	var num = 0;
	var result = false;

	$(document).ready(function() {
		$(".bxslider").bxSlider({
			adaptiveHeight : true,
			pagerCustom : ".bx-pager"
		});
	});

	$(document).ready(function() {
		$(".bxslider").on("click", "li", function() {
			num = $(".bxslider li").index(this);
			$(".bxslider li:eq(" + num + ")").css("border", "1px solid red");
			result = confirm(num + "번 이미지를 선택하시겠습니까?");
		});
	});

	window.onload = function() {
		var t = document.getElementById('button1');
		t.addEventListener('click', function(event) {
			if (result) {
				alert(num + "번을 선택하였습니다.");
				$("input[name=skinnum]").val(num);
				 console.log(num);
			} else
				alert("이미지를 선택해 주세요");
		});
	}
</script>

<style type="text/css">
.flex-container {
	display: -webkit-flex;
	display: flex;
	-webkit-flex-flow: row wrap;
	flex-flow: row wrap;
	text-align: center;
}


.flex-container>* {
	padding: 15px;
	-webkit-flex: 1 100%;
	flex: 1 100%;
}

.container-fluid-skin {
	
}

.row-fluid-top {
	height: 80px;
	margin-right: 25%;
}

.row-fluid-middle-image {
	height: 100px;
	margin-right: 25%;
}

.row-fluid-middle-image  div ul {
	height: 300px;
	width: 100%;
}

.row-fluid-middle-submit {
	width: 100%;
	height: 80px;
}

.row-fluid-footer {
	width: 100%;
	height: 50px;
}

#skinnum {
	visibility: hidden;
}
</style>
<title>스킨 선택</title>
</head>
<body>
	<nav class="navbar navbar-default">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand">페이지 설정</a>
		</div>
		<ul class="nav navbar-nav">
			<li><a href="/semi/view/용철/choiceSkin.html">스킨 설정</a></li>
			<li class="active"><a href="/semi/view/용철/choiceLayout.jsp">레이아웃
					설정</a></li>
		</ul>
	</div>
	</nav>
	<form id="choiceSkin" action="" method="post">
		<div class="container-fluid-skin">
			<div class="row-fluid-top">
				<div class="col-md-2">
					<h4>미리보기</h4>
				</div>
				<div class="col-md-2 submit">
					<button type="button" class="btn btn-default" id="button1">적용하기</button>
				</div>
				<div class="col-md-2">
				<input type="text" name="skinnum" id="skinnum">
				</div>
			</div>
			<div class="row-fluid-middle-image">
				<div class="col-lg-8 image">
					<ul class="bxslider">
						<li><img src="../../images/용철/730_200/배경화면1.jpg" /></li>
						<li><img src="../../images/용철/730_200/배경화면2.jpg" /></li>
						<li><img src="../../images/용철/730_200/배경화면3.jpg" /></li>
						<li><img src="../../images/용철/730_200/배경화면4.jpg" /></li>
						<li><img src="../../images/용철/730_200/배경화면5.jpg" /></li>

					</ul>

					<div class="bx-pager">
						<a data-slide-index="0" href=""> <img
							src="../../images/용철/thumbs/t-배경화면1.jpg" /></a> <a
							data-slide-index="1" href=""><img
							src="/semi/images/용철/thumbs/t-배경화면2.jpg" /></a> <a
							data-slide-index="2" href=""><img
							src="/semi/images/용철/thumbs/t-배경화면3.jpg" /></a> <a
							data-slide-index="3" href=""><img
							src="/semi/images/용철/thumbs/t-배경화면4.jpg" /></a>
					</div>
				</div>
			</div>
			<input type="text" name="skinnum" id="skinnum">
		</div>
	</form>
</body>
</html>
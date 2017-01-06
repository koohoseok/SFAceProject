<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, member.model.vo.Member" %>
<%
	Member loginUser = (Member)session.getAttribute("loginUser");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>디카사모</title>
<link rel="stylesheet" type="text/css" href="../../css/문호/smallForm.css" />
<script type="text/javascript">
	
</script>
</head>
<body>
	<div id="take01" style="background-image: url(../../images/문호/dica.jpg)">
		<div id="take01_01">
			<ul>
				<li>소모임정보</li>
				<li>게시판</li>
				<li>일 정</li>
				<li>사 진</li>
				<li>대화방</li>
				<li><a href="javascript:location.href='loginSuccess.jsp';">마이홈</a></li>
			</ul>
		</div>
	</div>
	<div id="take02">
		<div id="take02_01">
			<img src="../../images/문호/news.jpg">
		</div>
		<div id="take02_02">
			<img src="../../images/문호/news.jpg">
		</div>
	</div>
	<div id="take03">
		<div id="take03_01">
			<a href="../Song2/board.html"><img src="../../images/문호/board.jpg"></a>
		</div>
		<div id="take03_02">
			<img src="../../images/문호/cal.jpg">
		</div>
	</div>
	<div id="take04">
		<img src="../../images/문호/pic.jpg">
	</div>
</body>
</html>
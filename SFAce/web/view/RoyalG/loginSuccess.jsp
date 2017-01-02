<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.model.vo.Member"%>
    
<%
	Member loginUser = (Member)session.getAttribute("loginUser");
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>S.F.Ace 에 어서오세요</title>
<link rel="stylesheet" type="text/css" href="../../css/문호/log.css" />
	<script type="text/javascript">
	
	</script>
</head>
<body>
	<div id="top">
		<div id="logo">
		<h1><a href="#">S.F.Ace</a></h1>
		</div>
		<div id="regi">
			<%= loginUser.getUserName() %> 님 환영합니다.<br>
			<a href="/semi/logout"><input type="button" value="로그아웃" id="logout"></a>
		</div>
	</div>
	<hr>
	<div id="mid">
		<div id="layout01">
			<div class="club" style="cursor: pointer; onclick=location.href='#'; background-image: url(../../images/문호/c01.jpg)"></div>
			<div class="club" style="cursor: pointer; onclick=location.href='#'; background-image: url(../../images/문호/c02.jpg)"></div>
			<div class="club" style="cursor: pointer; onclick=location.href='#'; background-image: url(../../images/문호/c03.jpg)"></div>
			<div class="club" style="cursor: pointer; onclick=location.href='#'; background-image: url(../../images/문호/c04.jpg)"></div>
			<div class="club" style="cursor: pointer; onclick=location.href='#'; background-image: url(../../images/문호/c05.jpg)"></div>
			<div class="club" style="cursor: pointer; onclick=location.href='#'; background-image: url(../../images/문호/c06.jpg)"></div>
		</div>
		<div id="layout02">
			<div id="make_club" style="cursor: pointer;" onclick="location.href='../용철/makeGroup.html';"></div>
		</div>
		
	</div>
	<div id="foot">
	<hr>
	<br>copyright©24/7
	</div>
</body>
</body>
</html>
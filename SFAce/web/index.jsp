<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="common.*, java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>S.F.Ace</title>
<link rel="stylesheet" type="text/css" href="css/문호/gate.css" />
	<script type="text/javascript">
	
	</script>
</head>

	<!-- <h2><a href="view/송이/board.html">게시판설정</a></h2> -->
	<div id="top">
		<div id="logo">
		<h1><a href="#">S.F.Ace</a></h1>
		</div>
		<div id="regi">
		<form action ="login" method="post">
			<label for="userId">아이디</label>
            <input type="text" name="userid" id="userId" />
            <label for="pass">비밀번호</label>
            <input type="password" name="userpwd" id="pass" /><br />
            <input type ="submit" value="로그인" id="login" />
            <a href="view/호석/회원가입.html"><input type="button" value="회원가입" id="reg" /></a>
        </form>
		</div>
	</div>
	<hr>
	<div id="mid">
	<br><br><br>
		소통과 즐거움이 있는 공간 <br>
		<h1>S.F.Ace!</h1>
	</div>
	<div id="foot">
	<hr>
	<br>copyright©24/7
	</div>
</body>
</html>
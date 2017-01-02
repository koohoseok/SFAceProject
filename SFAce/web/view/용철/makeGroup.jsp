<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
.row1{
	text-align: left;
 	background-color: grey;
 	heigth: 50px;
 	margin-right: 200px;
}
</style>
<title>소모임 만들기</title>
</head>
<body>
<form action = "">
	<div class="container">
	<div class="row1">
			<div class="col-md-5-header">
			<h3>소모임 생성페이지</h3></div>
		</div>
		
		<div class="row">
			<div class="col-md-10">
			<label for="groupName">소모임이름:</label>
  <input type="text" class="form-control" id="groupName">
			</div>
		</div>
		<div class="row">
			<div class="col-md-10">
			<label for="mngrName">관리자 닉네임:</label>
  <input type="text" class="form-control" id="mngrName"></div>
		</div>
		<div class="row">
			<div class="col-md-10">
			<label for="groupComment">소모임 소개글:</label>
      <textarea class="form-control" rows="5" id="groupComment"></textarea>
    </div></div>
		<div class="row">
			<div class="col-md-10">
			<label for="image">대표 이미지:</label>
			<input type="file" name="images" class ="b1"></div>
		</div>
		<div class="row">
			<div class="col-md-10">
			<label for="skins">스킨/레이아웃 설정:</label>
			<button type="button" name="skins" class="btn btn-default" onclick="window.open('/semi/view/용철/choiceSkin.html','CLIENT_WINDOW','resizable=yes scrollbars=yes width=900 height=600')" >선택하기</button>
			</div>
		</div>
		<div class="row">
			<div class="col-md-10">
			<label for="categroies">카테고리 설정:</label>
			 <label><input type="checkbox"  name="categories" class="c1"  value="1">Option 1</label>
			 <label><input type="checkbox"  name="categories" class="c1"  value="2">Option 2</label>
			 <label><input type="checkbox"  name="categories" class="c1"  value="3">Option 3</label>
			 <label><input type="checkbox"  name="categories" class="c1"  value="4">Option 4</label>
			 <label><input type="checkbox"  name="categories" class="c1"  value="5">Option 5</label>
			 <label><input type="checkbox"  name="categories" class="c1"  value="6">Option 6</label>
			 <label><input type="checkbox"  name="categories" class="c1"  value="7">Option 7</label>
			</div>
		</div>
		<div class="row">
			<div class="col-md-10">
			<label for="tags">태그 설정:</label>
			  <textarea class="form-control" rows="3" id="tags"></textarea>
			</div>
		</div>
		<div class="row">
			<div class="col-md-5">
			<button type="submit" name="skins" class="btn btn-default2" >소모임 생성</button>
			<button type="reset"  name="reset" class ="btn btn-default3">선택 취소</button>
			</div>
		</div>
		<div class="row">
			<div class="col-md-10">
			<h3>made by SFACE</h3></div>
		</div>
		<div class="row-footer">
			<div class="col-md-10"></div>
		</div>
	</div>
		</form>
</body>
</html>
<!-- 자료를 받는 화면  boardinputpage.jsp  -->    



<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.util.*" %>

<html>
<head>
<meta charset="UTF-8">
<title>Board_Input</title>


</head>
<body>
<%@ include file = "../header.jsp" %>

<div class="alert alert-secondary" role="alert">
<div class="container">
	<h1 class = "display-3">Board</h1>
</div>	
</div>

<div class="container">
<form action="boardinput.jsp" method="post">

	<div class="form-group row">
		<label class="col-sm-2">Title</label>
		<div class="col-sm-3">
		<textarea name="title" rows="1" cols="40" class="form-control" placeholder="제목을 입력하세요"></textarea>
		</div>
	</div>
		
	<div class="form-group row">
		<label class="col-sm-2">memo</label>
		<div class="col-sm-3">
			<textarea name="memo" rows="3" cols="40"  class="form-control" placeholder="내용을 입력하세요"></textarea>
		</div>
	</div>

	<div class="form-group row">
		<div class="col-sm-offset-2 col-sm-10">
			<input type="submit" class="btn btn-primary" value="등록">
			<input type="reset" class="btn btn-danger" value="취소" onclick="reset()">
		</div>	
	</div>

</form>
</div>

	
<%@ include file = "../footer.jsp" %>	

</body>
</html>
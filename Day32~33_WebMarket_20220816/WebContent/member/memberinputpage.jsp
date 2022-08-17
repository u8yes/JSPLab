<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.time.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- CSS only -->
<!-- <link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous"> -->
</head>
<body>

<%@ include file="../header.jsp" %>
	<!-- <nav class="navbar navbar-dark bg-dark">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="welcome.jsp">Home</a>
			</div>
		</div>
	</nav> -->

	<div class="alert alert-secondary" role="alert">
		<div class="container">
			<h1 class="display-3">
				게시판-member
			</h1>
		</div>
	</div>
	
	<div class="container">
		<form action="memberinput.jsp" method="post">
			
			<div class="form-group row">
				<label class="col-sm-2">멤버 이름</label>
				<div class="col-sm-3">
					<input name="mname" type="text" class="form-control" placeholder="이름을 입력하세요">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">전화번호</label>
				<div class="col-sm-3">
					<input name="mtel" type="text" class="form-control" placeholder="전화번호를 입력하세요">
				</div>
			</div>
			
			<div class="form-group-row">
				<div class="col-sm-offset-2 col-sm-10">
					<input type="submit" class="btn btn-primary" value="등록">
					<input type="reset" class="btn btn-danger" value="취소" onclick="reset()">
				</div>
			</div>
		
		</form>
	</div>

<%@ include file="../footer.jsp" %>
	<!-- <footer class="container">
		<p>&copy; JULIA</p>
	</footer> -->


	<!-- JavaScript Bundle with Popper -->
	<!-- <script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
		crossorigin="anonymous"></script> -->
</body>
</html>
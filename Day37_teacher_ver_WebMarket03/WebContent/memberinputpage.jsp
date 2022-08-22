<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

  <meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<body>

<%@ include file="header.jsp" %>


<div class="alert alert-secondary" role="alert">
<div class="container">

	<h1 class = "display-3">
		회원 등록
	</h1>
</div>	
</div>

<div class="container align-items-center" >

<form action="memberinput.jsp" method="post" enctype="multipart/form-data">


	<div class="form-group row">
		<label class="col-sm-2 d-flex justify-content-end">회원별명</label>
		<div class="col-sm-5">
			<input name="mname" type="text" class="form-control" placeholder="한글 사용도 가능합니다.">
		</div>
	</div>

	<div class="form-group row">
		<label class="col-sm-2  d-flex justify-content-end">패스워드</label>
		<div class="col-sm-5">
			<input name="mpass" type="password" class="form-control" placeholder="암호를 입력하세요">
		</div>
	</div>
	
	<div class="form-group row">
		<label class="col-sm-2 d-flex justify-content-end">전화번호</label>
		<div class="col-sm-5">
			<input name="mtel" type="text" class="form-control" placeholder="전화번호를 입력하세요">
		</div>
	</div>
	<div class="form-group row">
		<label class="col-sm-2 d-flex justify-content-end">전자우편</label>
		<div class="col-sm-5">
			<input name="memail" type="text" class="form-control" placeholder="이메일주소를 입력하세요">
		</div>
	</div>
	
		<div class="form-group row">
		<label class="col-sm-2 d-flex justify-content-end">본인성별</label>
		<div class="col-sm-5">
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="mgender" id="inlineRadio1" value="남성">
			  <label class="form-check-label" for="inlineRadio1">남성</label>
			</div>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="mgender" id="inlineRadio2" value="여성">
			  <label class="form-check-label" for="inlineRadio2">여성</label>
			</div>

		</div>
	</div>
	
		<div class="form-group row">
		<label class="col-sm-2  d-flex justify-content-end">배송주소</label>
		<div class="col-sm-5">
			<input name="maddr" type="text" class="form-control" placeholder="배송지를 입력하세요">
		</div>
	</div>
	
	<div class="form-group row">
	<label class="col-sm-2  d-flex justify-content-end">사진등록</label>
	<div class="col-sm-5">
	  <input type="file" name="image1" class="form-control" id="inputGroupFile02">
	 </div>
	</div>
	
	
	
	<div class="container" style="height: 20px;"></div>
	
	<div class="form-group row">
			<label class="col-sm-2"></label>
				<div class="col-sm-5 d-flex justify-content-around">
			<input type="submit" class="btn btn-secondary" value="등록">
			<input type="reset" class="btn btn-dark" value="취소" onclick="reset()">			 
		
		</div>
		
	</div>

</form>
</div>

<br><br>
<!-- <footer class="container">
	<p> &copy; Austin Yoon</p>
</footer> -->

<%@ include file="footer.jsp" %>


</body>
</html>
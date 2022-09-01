<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  
  <!-- 서머노트를 위해 추가해야할 부분 -->
  <script src="${pageContext.request.contextPath}/resource/summernote/summernote-lite.js"></script>
  <script src="${pageContext.request.contextPath}/resource/summernote/lang/summernote-ko-KR.js"></script>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resource/summernote/summernote-lite.css">
  <!--  -->
  
</head>
<body>

<!-- <nav class="navbar navbar-dark bg-dark">
<div class="container">
	<div class="navbar-header">
		<a class="navbar-brand" href="welcome.jsp">Home</a>
	</div>
</div>

</nav>

 -->
<%@ include file="header.jsp" %>


<div class="alert alert-secondary" role="alert">
<div class="container">

	<h1 class = "display-3">
		제품 등록
	</h1>
</div>	
</div>

<div class="container align-items-center" >

<form action="productinput.jsp" method="post" enctype="multipart/form-data">


	<div class="form-group row">
		<label class="col-sm-2 d-flex justify-content-end">제품ID</label>
		<div class="col-sm-5">
			<input name="pid" type="text" class="form-control" placeholder="제품 아이디를 입력하세요">
		</div>
	</div>

	<div class="form-group row">
		<label class="col-sm-2  d-flex justify-content-end">제품명</label>
		<div class="col-sm-5">
			<input name="pname" type="text" class="form-control" placeholder="제품명을 입력하세요">
		</div>
	</div>
	
		<div class="form-group row">
		<label class="col-sm-2  d-flex justify-content-end">제품설명</label>
		<div class="col-sm-5"">
  <textarea class="summernote" name="pdesc"></textarea>    
</div>
<script>
$('.summernote').summernote({
	  height: 150,
	  lang: "ko-KR",
	  toolbar: [
		    // [groupName, [list of button]]
		    ['fontname', ['fontname']],
		    ['fontsize', ['fontsize']],
		    ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
		    ['color', ['forecolor','color']],
		    ['table', ['table']],
		    ['para', ['ul', 'ol', 'paragraph']],
		    ['height', ['height']],
		    ['insert',['picture','link','video']],
		    ['view', ['fullscreen', 'help']]
		  ]
	});
</script>
		<!-- <div class="col-sm-3">
			<textarea name="pdesc" rows="5" cols="20" class="form-control" placeholder="제품설명을 입력하세요"></textarea>
		</div> -->
	</div>
	
		<div class="form-group row">
		<label class="col-sm-2  d-flex justify-content-end">제품가격</label>
		<div class="col-sm-5">
			<input name="pprice" type="text" class="form-control" placeholder="제품 가격을 입력하세요">
		</div>
	</div>
	
	<div class="form-group row">
	<label class="col-sm-2  d-flex justify-content-end">사진등록</label>
	<div class="col-sm-5">
	  <input type="file" name="image1" class="form-control" id="inputGroupFile02">
	 </div>
	</div>
		<div class="form-group row">
			<label class="col-sm-2"></label>
	<div class="col-sm-5">
	  <input type="file" name="image2" class="form-control" id="inputGroupFile02">
	 </div>
	</div>
		<div class="form-group row">
			<label class="col-sm-2"></label>
	<div class="col-sm-5">
	  <input type="file" name="image3" class="form-control" id="inputGroupFile02">
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


<%@ include file="footer.jsp" %>


</body>
</html>
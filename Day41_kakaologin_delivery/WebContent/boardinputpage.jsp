<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.util.*" %>

<html>
<head>
<meta charset="UTF-8">
<title>Board_Input</title>
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
<%@ include file = "../header.jsp" %>

<div class="alert alert-secondary" role="alert">
<div class="container">
	<h1 class = "display-3">게시판</h1>
</div>	
</div>

<div class="container align-items-center" >
<form action="boardinput.jsp" >
	<div class="form-group row">
		<label class="col-sm-2 d-flex justify-content-end">제목</label>
		<div class="col-sm-7">
		<textarea name="title" rows="1" cols="40" class="form-control" placeholder="제목을 입력하세요"></textarea>
		</div>
	</div>
		
	<div class="form-group row">
		<label class="col-sm-2 d-flex justify-content-end">내용</label>
		<div class="col-sm-7">
  <textarea name="content" class="summernote"></textarea>    
</div>
<script>
$('.summernote').summernote({
	  height: 200,
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

	</div>


	<div class="form-group row">
		<div class="col-sm-offset-2 col-sm-10">
			<input type="submit" class="btn btn-primary" value="등록">
			<input type="reset" class="btn btn-danger" value="취소" onclick="reset()">
		</div>	
	</div>

</form>
</div></div>
<br><br><br>
	
<%@ include file = "../footer.jsp" %>	

</body>
</html>
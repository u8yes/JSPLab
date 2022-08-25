<!-- 자료를 받는 화면  boardinputpage.jsp  -->    
<%@page import="db.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

  	<%
 	String mname = (String)session.getAttribute("mname");
 
	if (mname == null) {
		out.println("<script>alert('로그인이 필요합니다.');</script>");
		out.println("<script>location.href='login.jsp'</script>");
	}
	
	boolean login = true;
	
	%>      
    
<!DOCTYPE html>
<%@ page import="java.util.*" %>

<html>
<head>
<title>Board_Input</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <!-- include libraries(jQuery, bootstrap) -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  
  <!-- include summernote css/js -->
  <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
    
  <!-- 서머노트를 위해 추가해야할 부분 -->
  <script src="${pageContext.request.contextPath}/resource/summernote/summernote-lite.js"></script>
  <script src="${pageContext.request.contextPath}/resource/summernote/lang/summernote-ko-KR.js"></script>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resource/summernote/summernote-lite.css">
  <!--  -->
  

</head>
<body>
<%@ include file = "header.jsp" %>
 



<div class="alert alert-secondary" role="alert">
<div class="container">
	<h1 class = "display-3">Board</h1>
</div>	
</div>

<% 

String author = mname;
DTOboard board = DAOboard.boardEdit(author);

%>



<div class="container">
<form action="boardinput.jsp" method="post" enctype="multipart/form-data">

	<div class="form-group row">
		<label class="col-sm-2  d-flex justify-content-start">제목</label>
		<div class="col-sm-5">
			<input name="title" value="<%=board.getTitle() %>" type="text" class="form-control" placeholder="이름을 입력하세요">
		</div>
	</div>
	<br>
	<div class="container">
	  <textarea  name="content" class="summernote" value="<%=board.getContent() %>"></textarea>    
	</div>
	
	<script>
	$('.summernote').summernote({
		  height: 150,
		  lang: "ko-KR"
		});
	</script>
	<br>
	<div class="form-group row">
		<label class="col-sm-2  d-flex justify-content-start">작성자</label>
		<div class="col-sm-5">
			<input name="author" value="<%=mname%>" type="text" class="form-control" placeholder="이름을 입력하세요">
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




	
<%@ include file = "footer.jsp" %>	


</body>
</html>
<%@page import="db.*"%>
<%@page import="java.util.*"%>
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




<%@ include file = "header.jsp" %>

<div class="alert alert-secondary" role="alert">
<div class="container">
	<h1 class = "display-3">Board Detail</h1>
</div>	
</div>
<%
	String bid = request.getParameter("bid");

	DTOboard board = DAOboard.boarddetail(bid);
	
%>

<div class="container align-items-center" >
<form action="boardinput.jsp" >
	<div class="form-group row">
		<label class="col-sm-2 d-flex justify-content-end">제목</label>
		<div class="col-sm-7">
		<div class="container"><h3 class="fw-normal"><%=board.getTitle() %></h3></div>
		</div>
	</div>
		
	<div class="form-group row">
		<label class="col-sm-2 d-flex justify-content-end">내용</label>
		<div class="col-sm-7">
		<div class="container"><%=board.getContent() %></div>
		</div>
	</div>
    
    
</div>

<script>
var edit = function() {
	  $('.click2edit').summernote({focus: true});
	};
</script>

	</div>


	<div class="form-group row">
		<label class="col-sm-2 d-flex justify-content-end"></label>
		<div class="col-sm-7 ">
			<a href="boardlist.jsp" class="btn btn-secondary" role="button">목록 &raquo;</a>		
			<a href="boardeditpage.jsp?bid=<%=board.getBid() %>" class="btn btn-warning" role="button">수정 &raquo;</a>		
			<a href="boardDeleteCheck.jsp?bid=<%=board.getBid() %>" class="btn btn-danger" role="button">삭제 &raquo;</a>		
		
		</div>	
	</div>

</form>
</div></div>
<br><br><br>
	
<%@ include file = "footer.jsp" %>	


</body>
</html>
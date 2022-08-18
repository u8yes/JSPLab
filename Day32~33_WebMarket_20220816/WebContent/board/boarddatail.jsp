<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "db.*" %>
<%@ page import = "java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">

<%
	String no = "3";

	DTOboard file = DAOboard.boardDetail(no);
	
	String img =  file.getIname();
	String imgstr = "";
	if (img != null) {
		imgstr = "../images/" + img; // images 폴더는 board를 나가야 있다.
	}
%>

	<img src="<%=imgstr%>">
	
	<br><br>
	<%=file.getBid()%>
	<%=file.getTitle()%>
	<%=file.getContent()%>
	
	<%=file.getBdate()%>
	<br><br>
	<div class="d-grid gap-2 col-6 mx-auto">
	<a class="btn btn-primary" href="boardlist.jsp" target="_blank" role="button">목록</a>
	<a class="btn btn-secondary" href="boardinputpage.jsp" target="_blank" role="button">사진 등록</a>
	</div>
</body>
</html>
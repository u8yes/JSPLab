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
<%
	String no = "3";

	DTOboard file = DAOboard.boardDetail(no);
	
	String img =  file.getIname();
	String imgstr = "";
	if (img != null) {
		imgstr = "../images/" + img;
	}
%>

	<img src="<%=imgstr%>">
	
<br><br>
	<%=file.getBid()%>
	<%=file.getTitle()%>
	<%=file.getContent()%>
	
	<%=file.getBdate()%>
</body>
</html>
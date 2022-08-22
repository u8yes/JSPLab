<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 확인</title>
</head>
<body>
세션 id : <%= session.getAttribute("id")%><br>
세션 name : <%= session.getAttribute("name")%><br>


<p><a href="session_delete.jsp">세션 삭제</a>
<p><a href="session_create.jsp">세션 생성</a>
</body>
</html>
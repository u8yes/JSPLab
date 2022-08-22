<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 삭제</title>
</head>
<body>

<%
	out.print("세션생성시간 = " + session.getCreationTime() + "초<br>");
	out.print("마지막세션접근시간 = " + session.getLastAccessedTime() + "초<br>");
	out.print("세션유지시간 = " + (session.getLastAccessedTime() - session.getCreationTime()) + "초<br>");
	out.print("세션유효시간 = " + session.getMaxInactiveInterval() + "초<br>");

	// 세션 정보 삭제
	
	session.removeAttribute("id");
	session.removeAttribute("name");
	
	out.print("세션 정보 삭제 완료");
	
	
	
%>
<p><a href="session_check.jsp">세션 확인</a>
</body>
</html>
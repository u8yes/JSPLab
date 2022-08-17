<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%! int count = 0; 
		int a = 1;
		int b = 2;
		int c = 3;
	
	
	%>
	
	<% 
	// 스크립 틀릿은 주로 자바 구문 작성용으로 사용
	/*
		자바 긴줄 주석
	*/
	
	%>
	
	
<!-- HTML 영역에서의 주석 -->

<%-- JSP 전용 주석 --%>
	
	
	
	Page Count is <%= ++count %> blablablabla
	<br>
	
	<p> Today's date : <%= new java.util.Date() %> </p>
	
	
	<p> Sum : <%= a + b + c %></p>
	
</body>
</html>
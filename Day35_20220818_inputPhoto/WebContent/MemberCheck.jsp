
<%@page import="java.sql.*"%>
<%@page import="DB.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<% 
	request.setCharacterEncoding("utf-8");

	String mname=request.getParameter("mname");
	String mtel=request.getParameter("mtel");
 	
	DAOMember.join(mname, mtel);
 	
 	
%>
    
    <!-- 데이터베이스 내용 자체를 변경했기 때문에 오류가 뜨는 것이 당연한 상태이다. 
    이전 자료들을 새로 구성해서 작업한 상태. -->
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
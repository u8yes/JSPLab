
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
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
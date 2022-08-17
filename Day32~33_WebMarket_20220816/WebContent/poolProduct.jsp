
<%@page import="java.sql.*"%>
<%@page import="db.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  

<% 
	request.setCharacterEncoding("utf-8");

	String mname=request.getParameter("pid");
	String pname=request.getParameter("pname");
	String pdesc=request.getParameter("pdesc");
	String pprice=request.getParameter("pprice");
	String pfilename=request.getParameter("pfilename");
	
	DAOMember.join(pid, pname, pdesc, pprice, pfilename);
 	
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







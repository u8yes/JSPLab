<%@page import="db.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%

	String author = (String)session.getAttribute("mname");
	String bid = request.getParameter("bid");

	int result = 0;
	result = DAOboard.boardDelete(bid, author);
	
	
	if (result == 1) {
		
		out.println("<script>alert('게시물 삭제 완료');</script>");
		

		 

	}else if (result == 0) {
		out.println("<script>alert('게시물이 삭제 되지 않았습니다.');</script>");
		out.println("<script>location.href='boarddetail.jsp';</script>"); 
	}
%>


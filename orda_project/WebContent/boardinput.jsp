<%@page import="db.*"%>
<%@page import="util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="org.apache.commons.fileupload.*" %>    
<%@ page import="org.apache.commons.fileupload.disk.*" %>    
<%@ page import="org.apache.commons.fileupload.servlet.*" %>

<%@ page import="java.util.*" %>    

<%

	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String author = (String)session.getAttribute("mname");
	if(author == null){
		author = "방문객";
	}

	
	DAOboard.boardinsert(title, content, author);
	
	response.sendRedirect("boardlist.jsp");

%>


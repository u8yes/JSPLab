<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>
<%@ page import="day31.*" %>

<%


	Connection conn = null;
	conn = DbConnClose.getConnection();
	
	String memo = request.getParameter("item");

	
	PreparedStatement pstmt = null;
	
	String sql = "INSERT INTO visit VALUES(?)";
			
	pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, memo);
		
	
	
	pstmt.executeUpdate();

	pstmt.close();
	conn.close();		
			
%>
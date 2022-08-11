<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>
<%@ include file="DBInclude.jsp" %>

<%

	String pno = "987465321";
	String pname = "kim";
	String pdepar = "economy";
	String pmobile = "01000000000";


	
	
	PreparedStatement pstmt = null;
	
	String sql = "INSERT INTO prof VALUES(?,?,?,?)";
			
	pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, pno);
		pstmt.setString(2, pname);
		pstmt.setString(3, pdepar);
		pstmt.setString(4, pmobile);
	
	
	pstmt.executeUpdate();
	
	pstmt.close();
	conn.close();		
			
	%>
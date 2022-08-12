<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.sql.*" %>
<%@ page import="day31.*" %>

<%    
   
	Connection conn = null;
	conn = DbConnClose.getConnection();
	

	PreparedStatement pstmt = null;

	String sql = "CREATE table visit("
			+ "memo	   varchar(20)	not null,"
			+ "primary key(memo))";
	
	pstmt = conn.prepareStatement(sql);
	

	pstmt.executeUpdate();


	pstmt.close();
	conn.close();
	

%>
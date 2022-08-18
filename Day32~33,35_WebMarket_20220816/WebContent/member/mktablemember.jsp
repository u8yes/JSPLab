<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="db.*" %>

<%
	Connection conn=null;
	conn=DbConnClose.getConnection();
	
	PreparedStatement pstmt=null;

	String sql="CREATE TABLE member("
	+"mno		INT(11) NOT NULL AUTO_INCREMENT,"
	+"mname		varchar(50),"
	+"mtel		varchar(20),"
	+"mlevel	varchar(10),"
	+"mdate		TIMESTAMP NULL DEFAULT current_timestamp(),"
	+"primary key(mno))";

	pstmt=conn.prepareStatement(sql);
	
	pstmt.executeUpdate();
	
	pstmt.close();
	conn.close();
%>
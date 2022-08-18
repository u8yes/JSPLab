<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%-- <%@ include file="mkdb.jsp"%> --%>

<%
	String driverClass="com.mysql.jdbc.Driver";
	Class.forName(driverClass);
	
	Connection conn=null;
	
	String url="jdbc:mysql://localhost:3307/webmarket";
	String id="root";
	String pw="0000";
	
	conn=DriverManager.getConnection(url,id,pw);
	
	PreparedStatement pstmt=null;

	String sql="CREATE TABLE product("
			+"pid		varchar(50)	not null,"
			+"pname		varchar(50),"
			+"pdesc		varchar(50),"
			+"pprice	varchar(50),"
			+"pfilename	varchar(50),"
			+"primary key(pid))";

	pstmt=conn.prepareStatement(sql);
	
	pstmt.executeUpdate();
	
	pstmt.close();
	conn.close();
			
%>
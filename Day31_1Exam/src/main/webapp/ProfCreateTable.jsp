<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="DBInclude.jsp" %>

<%    


	PreparedStatement pstmt = null;

	String sql = "CREATE table prof3("
				+ "pno			varchar(20) 	not null,"
				+ "pname		varchar(50),"
				+ "pdepar		varchar(50),"
				+ "pmobile		varchar(14),"
				+ "primary key(pno))";
			
	pstmt = conn.prepareStatement(sql);
	
// 5.SQL Execute
	pstmt.executeUpdate();

// 6. ResultSet Object
	// 미 실시 (sql 실행 결과 수신)
	
// 7. Connection Close
	pstmt.close();
	conn.close();
	

%>







<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="day31.*" %>
<%    
// JSP 로 DB 연결 방법 3/4    
	Connection conn = null;
	conn = DbConnClose.getConnection();
	
// 4.Statement Object
	PreparedStatement pstmt = null;

	String sql = "CREATE table exam3("
				+ "hakbun	int 	not null,"
				+ "name		char(5),"
				+ "year 	int,"
				+ "dept		varchar(10),"
				+ "addr		varchar(50),"
				+ "primary key(hakbun))";
			
	pstmt = conn.prepareStatement(sql);
	
// 5.SQL Execute
	pstmt.executeUpdate();

// 6. ResultSet Object
	// 미 실시 (sql 실행 결과 수신)
	
// 7. Connection Close
	pstmt.close();
	conn.close();
	

%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.sql.*" %>
    
<%

	String hakbun = "20214721";
	String name = "dddm";
	String year = "23";
	String dept = "pidfdfno";
	String addr = "Seoulasdfasdf";


		String driverClass = "com.mysql.jdbc.Driver";
		Class.forName(driverClass);
		
		Connection conn = null;

		String url = "jdbc:mysql://localhost:3307/exam";
		String id = "root";
		String pw = "0000";
		
		conn = DriverManager.getConnection(url, id, pw);
		
	// 4.Statement Object
		PreparedStatement pstmt = null;

		String sql = "INSERT INTO exam VALUES(?,?,?,?,?)";
				
		pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, hakbun);
			pstmt.setString(2, name);
			pstmt.setString(3, year);
			pstmt.setString(4, dept);
			pstmt.setString(5, addr);
				
	
// 5.SQL Execute
	pstmt.executeUpdate();

// 6. ResultSet Object
	// 미 실시 (sql 실행 결과 수신)
	
// 7. Connection Close
	pstmt.close();
	conn.close();		
			
%>
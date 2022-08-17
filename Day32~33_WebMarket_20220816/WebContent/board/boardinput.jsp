자료를 받는 코드  boardinput.jsp


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>

<%
	
	String title = request.getParameter("title");
	String memo = request.getParameter("memo");
	
	String driverClass = "com.mysql.jdbc.Driver";
	Class.forName(driverClass);
	
	Connection conn = null;

	String url = "jdbc:mysql://localhost:3307/webmarket";
	String id = "root";
	String pw = "0000";
	
	conn = DriverManager.getConnection(url, id, pw);
	
	PreparedStatement pstmt = null;

	String sql = "INSERT INTO board VALUES(?,?)";
		
	pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, title);
		pstmt.setString(2, memo);

	pstmt.executeUpdate();
	
	pstmt.close();
	conn.close();
	
%>

</body>
</html>
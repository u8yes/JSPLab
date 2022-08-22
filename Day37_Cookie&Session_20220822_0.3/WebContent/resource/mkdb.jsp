<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
   <% //JSP로 DB연결방법 1/4 %>
    
    <%@ page import ="java.sql.*" %>
    
    <%  //1.sql package import 
    	//2. jdbc driver loading
    	// src - main - webapp - WEB-INF - lib 이 위치에 드라이버 파일을 넣기 
    	//mysql-connector-java-8.0.26.jar
		
			String driverClass = "com.mysql.jdbc.Driver";
    		Class.forName(driverClass);
    	
    	//3.Connection Object 
    		
    		Connection conn =  null;
    	
    		String url = "jdbc:mysql://localhost:3307/";
    		String id = "root";
    		String pw = "0000";
    		
    		conn = DriverManager.getConnection(url, id, pw);
    		
   		//4.statement Object
   		
   			PreparedStatement pstmt = null; //구문 객체 초기화
   		
   			String sql = "CREATE DATABASE webmarket";
   			pstmt = conn.prepareStatement(sql);
   			
 		//5. SQL Execute
 		
 			pstmt.executeUpdate();
		
 		//6. ResultSet Object
 		//미 실시 (sql 실행 결과 수신)
 		
 		//7. Connection Close
 		
 			pstmt.close();
 			conn.close();
 			
 			
		
		%>
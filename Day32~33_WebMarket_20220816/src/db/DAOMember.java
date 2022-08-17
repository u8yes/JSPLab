package db;

import java.sql.*;

import javax.naming.NamingException;

import util.*;

public class DAOMember {
	
	// C create R read U update D delete
	//회원 가입 (테이블에 데이터 넣기)
	public static int join(String pid, String pname, String pdesc, String pprice, String pfilename) throws NamingException, SQLException {
		
		
		try {
		Connection conn = null;
		PreparedStatement stmt = null;
		
		String sql = "INSERT INTO member (pid, pname, pdesc, pprice, pfilename) VALUES(?,?,?,?,?)";
		//Connection Pool 이용
		conn= ConnectionPool.get();
		
		stmt = conn.prepareStatement(sql);
		stmt.setString(1,pid);
		stmt.setString(2,pname);
		stmt.setString(3,pdesc);
		stmt.setString(4,pprice);
		stmt.setString(5,"etc");		
			
		int result = stmt.executeUpdate();
		// 결과가 1 과 2로 넘어 온다. 
		
		return result;
		
		} catch (Exception e) {
			
		
			
		}
		
	}

}
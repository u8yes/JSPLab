package DB;

import java.sql.*;

import javax.naming.NamingException;

import util.*;

public class DAOMember {
	
	// C create R read U update D delete
	//회원 가입 (테이블에 데이터 넣기)
	// 일단 빼두었음 - throws NamingException, SQLException
	public static int join(String mname, String mtel) throws NamingException, SQLException {
		
		Connection conn = null;
		PreparedStatement stmt = null;		
		

		
		String sql = "INSERT INTO member (mname, mtel) VALUES(?,?)";
		//Connection Pool 이용
		conn = ConnectionPool.get();
		
		stmt = conn.prepareStatement(sql);
			stmt.setString(1, mname);
			stmt.setString(2, mtel);		
			
		int result = stmt.executeUpdate();
		// 결과가 0과 1로 넘어 온다. 
		
		return result;
		
		

		

	}

}
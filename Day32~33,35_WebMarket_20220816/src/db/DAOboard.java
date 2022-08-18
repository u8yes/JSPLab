package db;

import java.sql.*;
import java.util.ArrayList;

import javax.naming.NamingException;

import util.*;

public class DAOboard {
	// C create R read U update D delete
	//회원 가입처리 (=테이블에 데이터 넣기)
	public static int boardinsert(String title, String content, String iname) throws NamingException, SQLException {
		
		Connection conn =null;
		PreparedStatement stmt = null;
		try {
		
		String sql ="INSERT INTO board(title, content, iname) VALUES(?,?,?)";
					//Connectionpool 이용
		conn = ConnectionPool.get();
		
		stmt = conn.prepareStatement(sql);
			stmt.setString(1, title);
			stmt.setString(2, content);
			stmt.setString(3, iname);
			
		int result = stmt.executeUpdate();
		//결과가 성공시 1, 실패시 2로 넘어온다.
		return result;
		} finally {
			stmt.close();
			conn.close();
		}
	}
	
	public static ArrayList<DTOboard> boardList() throws NamingException, SQLException{
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		String sql = "SELECT * FROM board";
		
		conn = ConnectionPool.get();
		stmt = conn.prepareStatement(sql);
		rs = stmt.executeQuery();
		
		ArrayList<DTOboard> files = new ArrayList<DTOboard>();
		
		while(rs.next()) {
			files.add(new DTOboard(rs.getString(1),
										rs.getString(2),
										rs.getString(3),
										rs.getString(4),
										rs.getString(5)));
		}
		return files;
	}
	
	public static DTOboard boardDetail(String bid) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		String sql = "SELECT * FROM board WHERE bid=? ";
		conn= ConnectionPool.get();
		stmt = conn.prepareStatement(sql);
			stmt.setString(1, bid);	
		rs = stmt.executeQuery();
		
		rs.next();
		
		bid = rs.getString(1);
		String title = rs.getString(2);
		String content = rs.getString(3);
		String iname = rs.getString(4);
		String bdate = rs.getString(5);
		

		
		DTOboard file = new DTOboard(bid,title,content,iname,bdate);
		
		return file;
	}
}
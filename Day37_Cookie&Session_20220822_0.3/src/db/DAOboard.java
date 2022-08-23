package db;

import java.sql.*;
import java.util.ArrayList;

import javax.naming.NamingException;

import util.*;

public class DAOboard {
	
	// C create R read U update D delete
	//테이블에 데이터 넣기
	public static int join(String mname, String mtel) throws NamingException, SQLException  {
		Connection conn = null;
		PreparedStatement stmt = null;
		int result = 0;
		
		String sql = "INSERT INTO member (mname, mtel) VALUES(?,?)";
		//Connection Pool 이용
		conn= ConnectionPool.get();
		
		stmt = conn.prepareStatement(sql);
			stmt.setString(1, mname);
			stmt.setString(2, mtel);		
			
		result = stmt.executeUpdate();
		// 결과가 성공1 과 실패 0으로 넘어 온다. 
		
		return result;
		
	}
	
	public static int boardinsert(String title, String content, String author) throws NamingException, SQLException  {
		
		Connection conn = null;
		PreparedStatement stmt = null;
		int result = 0;
		
		String sql = "INSERT INTO board (title, content, author) VALUES(?,?,?)";
		//Connection Pool 이용
		conn= ConnectionPool.get();
		
		stmt = conn.prepareStatement(sql);
			stmt.setString(1, title);
			stmt.setString(2, content);
			stmt.setString(3, author);	
			
		result = stmt.executeUpdate();
		// 결과가 성공1 과 실패 0으로 넘어 온다. 
		
		return result;
	}
	
	
	public static ArrayList<DTOboard> boardList() throws NamingException, SQLException{
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		String sql = "SELECT * FROM board";
		
		conn = ConnectionPool.get();
		stmt = conn.prepareStatement(sql);
		rs = stmt.executeQuery();
		
		ArrayList<DTOboard> boards = new ArrayList<DTOboard>();
		
		while(rs.next()) {
			boards.add(new DTOboard(rs.getString(1),
										rs.getString(2),
										rs.getString(3),
										rs.getString(4),
										rs.getString(5)));
		}
		return boards;
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
		String author = rs.getString(4);
		String bdate = rs.getString(5);
		

		
		DTOboard board = new DTOboard(bid,title,content,author,bdate);
		
		return board;
	}
	
	public static DTOboard boardEdit(String author) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		String sql = "SELECT * FROM board WHERE author=? ";
		conn= ConnectionPool.get();
		stmt = conn.prepareStatement(sql);
			stmt.setString(1, author);	
		rs = stmt.executeQuery();
		
		rs.next();
		
		String bid = rs.getString(1);
		String title = rs.getString(2);
		String content = rs.getString(3);
		author = rs.getString(4);
		String bdate = rs.getString(5);
		

		
		DTOboard board = new DTOboard(bid,title,content,author,bdate);
		
		return board;
	}
}

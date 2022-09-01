package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.NamingException;

import util.ConnectionPool;

public class DAOmember {

	
	public static int join(String mname, String mpass, String mtel, String memail, String mgender, String maddr, String miname) throws NamingException, SQLException  {
		Connection conn = null;
		PreparedStatement stmt = null;
		int result = 0;
		
		String sql = "INSERT INTO member (mname, mpass, mtel, memail, mgender, maddr, miname) VALUES(?,?,?,?,?,?,?)";
		//Connection Pool 이용
		conn= ConnectionPool.get();
		
		stmt = conn.prepareStatement(sql);
			stmt.setString(1, mname);
			stmt.setString(2, mpass);		
			stmt.setString(3, mtel);
			stmt.setString(4, memail);		
			stmt.setString(5, mgender);
			stmt.setString(6, maddr);		
			stmt.setString(7, miname);		
			
		result = stmt.executeUpdate();
		// 결과가 성공1 과 실패 0으로 넘어 온다. 
		
		return result;
		
	}
	
	 
		
		 public static int login(String mname, String mpass) throws NamingException, SQLException {
			
			Connection conn = null;
			PreparedStatement stmt = null;
			ResultSet rs = null;
			
			int result = 0;
			
			String sql = "SELECT mname, mpass FROM member WHERE mname=?";
			conn = ConnectionPool.get();
			stmt = conn.prepareStatement(sql);
				stmt.setString(1, mname);
				
			rs = stmt.executeQuery();
			
			if(!rs.next()) return 3;  // 아이디 비번 모두 없는 비회원
			
			if(mpass.equals(rs.getString("mpass"))) return 1; // 문제 없는 회원 
			
			return 2;   // 버번이 틀린 회원
			
		}
		 
		 
		 
		 public static int kakaologin(String mname) throws NamingException, SQLException {
				
			Connection conn = null;
			PreparedStatement stmt = null;
			ResultSet rs = null;
			
			int result = 0;
			
			String sql = "SELECT mname FROM member WHERE mname=?";
			conn = ConnectionPool.get();
			stmt = conn.prepareStatement(sql);
				stmt.setString(1, mname);
				
			rs = stmt.executeQuery();
			
			if(!rs.next()) return 3;  // 아이디 비번 모두 없는 비회원 -> 회원 가입
			
			return 1;   
			
		}
		 
		 
		 
	
			public static DTOmember memberdetail(String mname) throws NamingException, SQLException {
				Connection conn = null;
				PreparedStatement stmt = null;
				ResultSet rs = null;
				
				String sql = "SELECT * FROM member WHERE mname=? ";
				conn= ConnectionPool.get();
				stmt = conn.prepareStatement(sql);
					stmt.setString(1, mname);	
				rs = stmt.executeQuery();
				
				rs.next();
				
				String mno = rs.getString(1);
				mname = rs.getString(2);
				String mpass = rs.getString(3);
				String mtel= rs.getString(4);
				String memail = rs.getString(5);
				String mgender = rs.getString(6);
				String maddr = rs.getString(7);
				String mlevel = rs.getString(8);
				String miname = rs.getString(9);				
				String mdate = rs.getString(10);
				
				DTOmember member = new DTOmember(mno,mname,mpass,mtel,memail,mgender,maddr,mlevel,miname,mdate);
				
				return member;
			}
			
			
			
	public static int memberout(String mname, String mpass) throws NamingException, SQLException  {
			Connection conn = null;
			PreparedStatement stmt = null;
			int result = 0;
			
			String sql = "DELETE FROM member WHERE (mname=?) and (mpass=?) ";
			//Connection Pool 이용
			conn= ConnectionPool.get();
			
			stmt = conn.prepareStatement(sql);
				stmt.setString(1, mname);
				stmt.setString(2, mpass);			
				
			result = stmt.executeUpdate();
			// 결과가 성공1 과 실패 0으로 넘어 온다. 
			
			return result;
				
	}
			
	public static ArrayList<DTOmember> memberlist() throws NamingException, SQLException{
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		String sql = "SELECT * FROM member";
		
		conn = ConnectionPool.get();
		stmt = conn.prepareStatement(sql);
		rs = stmt.executeQuery();
		
		ArrayList<DTOmember> members = new ArrayList<DTOmember>();
		
		while(rs.next()) {
			members.add(new DTOmember(rs.getString(1),
										rs.getString(2),
										rs.getString(3),
										rs.getString(4),
										rs.getString(5),
										rs.getString(6),
										rs.getString(7),
										rs.getString(8),
										rs.getString(9),
										rs.getString(10)));
		}
		return members;
	}
	
	
	
	
	
}

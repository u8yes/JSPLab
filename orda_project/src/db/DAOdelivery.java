package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.NamingException;

import util.ConnectionPool;

public class DAOdelivery {

	public static int insert(String dpid,String dmid,String dmaddr,String dmtel,String dpname,String dpprice) throws NamingException, SQLException  {

		Connection conn = null;
		PreparedStatement stmt = null;
		int result = 0;
		
		String sql = "INSERT INTO delivery (dpid,dmid,dmaddr,dmtel,dpname,dpprice) VALUES(?,?,?,?,?,?)";
		//Connection Pool 이용
		conn= ConnectionPool.get();
		
		stmt = conn.prepareStatement(sql);
			stmt.setString(1, dpid);
			stmt.setString(2, dmid);	
			stmt.setString(3, dmaddr);		
			stmt.setString(4, dmtel);		
			stmt.setString(5, dpname);		
			stmt.setString(6, dpprice);	
			
		result = stmt.executeUpdate();
		// 결과가 성공1 과 실패 0으로 넘어 온다. 
		
		return result;
	}
	
	public static ArrayList<DTOdelivery> deliveryList() throws NamingException, SQLException{
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		String sql = "SELECT * FROM delivery";
		
		conn = ConnectionPool.get();
		stmt = conn.prepareStatement(sql);
		rs = stmt.executeQuery();
		
		ArrayList<DTOdelivery> deliverys = new ArrayList<DTOdelivery>();
		
		while(rs.next()) {
			deliverys.add(new DTOdelivery(rs.getString(1),
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
		return deliverys;
	}
	
	
	
	
	
	public static DTOdelivery deliveryDetail(String did) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		String sql = "SELECT * FROM delivery WHERE did=? ";
		conn= ConnectionPool.get();
		stmt = conn.prepareStatement(sql);
			stmt.setString(1, did);	
		rs = stmt.executeQuery();
		
		rs.next();
		
		did = rs.getString(1);
		String dpid = rs.getString(2);
		String dmid = rs.getString(3);
		String dmaddr= rs.getString(4);
		String dmtel = rs.getString(5);
		String dpname = rs.getString(6);
		String dpprice = rs.getString(7);
		String dstatus = rs.getString(8);
		String ddone = rs.getString(9);
		String ddate = rs.getString(10);
		
		
		
		DTOdelivery delivery = new DTOdelivery(did,dpid,dmid,dmaddr,dmtel,dpname,dpprice,dstatus,ddone,ddate);
		
		return delivery;
	}
	
	
	public static int statusup(String did) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		
		String sql = "SELECT did, dstatus FROM delivery WHERE did=? ";
		conn= ConnectionPool.get();
		stmt = conn.prepareStatement(sql);
			stmt.setString(1, did);
		rs = stmt.executeQuery();
	
		rs.next();
	
		String dstatus = rs.getString(2);
	
		int dstatusint = Integer.parseInt(dstatus);
	
		dstatusint++;
	
		String sql2 = "UPDATE delivery SET dstatus = ? WHERE did=?";
		conn= ConnectionPool.get();
		stmt = conn.prepareStatement(sql2);
			stmt.setInt(1, dstatusint);
			stmt.setString(2, did);
	
			int result = stmt.executeUpdate();
	
			return result;
	}

	
}

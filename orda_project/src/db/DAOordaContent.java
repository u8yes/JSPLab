package db;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.NamingException;

import util.ConnectionPool;

public class DAOordaContent {

	public static DTOordaContent ordaContentDetail(String oid) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		String sql = "SELECT * FROM orda_content WHERE oid=? ";
		conn= ConnectionPool.get();
		stmt = conn.prepareStatement(sql);
			stmt.setString(1, oid);	
		rs = stmt.executeQuery();
		
		rs.next();
		
		oid = rs.getString(1);
		String otitle = rs.getString(2);
		String odesc = rs.getString(3);
		
		

		
		DTOordaContent orda_content = new DTOordaContent(oid,otitle,odesc);
		
		return orda_content;
	}
	
	public static ArrayList<DTOordaContent> ordaContentList() throws NamingException, SQLException{
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		String sql = "SELECT * FROM orda_content";
		
		conn = ConnectionPool.get();
		stmt = conn.prepareStatement(sql);
		rs = stmt.executeQuery();
		
		ArrayList<DTOordaContent> ordaContents = new ArrayList<DTOordaContent>();
		
		while(rs.next()) {
			ordaContents.add(new DTOordaContent(rs.getString(1),
										rs.getString(2),
										rs.getString(3)));
		}
		return ordaContents;
	}
	
}

package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.Comment;
import model.User;

public class ProfileDAO {


		// データベース接続に使用する情報
		private final String JDBC_URL = "jdbc:h2:tcp://localhost/~/h2db/actionlogger";
		private final String DB_USER = "sa";
		private final String DB_PASS = "";

		public boolean save(String userid,String comment) {
			
			
			try (Connection conn = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASS)) {

				// INSERT文の準備
				String sql = "INSERT INTO profile (userid,comment) VALUES (?,?)";
				PreparedStatement pStmt = conn.prepareStatement(sql);
				
				pStmt.setString(1, userid);
				pStmt.setString(2, comment);
				int result = pStmt.executeUpdate();
				if (result != 1) {
					return false;
				}
			} catch (SQLException e) {
				e.printStackTrace();
				return false;
			}
			return true;
}
		public Comment load(String userid) {
			Comment com = null;
			try (Connection conn = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASS)) {
				String sql = "SELECT comment FROM profile WHERE userid=?";
				PreparedStatement pStmt = conn.prepareStatement(sql);
				pStmt.setString(1, userid);
				ResultSet rs = pStmt.executeQuery();
				while (rs.next()) {
					com = new Comment();
					com.setComment(rs.getString("comment"));
					
			        
					
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
				return null;
			}
	
		return com;
		}
}
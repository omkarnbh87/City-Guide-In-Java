package cityGuide;

import java.sql.*;

public class ConnectionProvider {
	private static Connection conn;

	public static Connection getconnection() {
		try {
			if (conn == null) {
				Class.forName("com.mysql.jdbc.Driver");
				conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/cityguide", "root", "root");
			}

			return conn;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}

	}
}
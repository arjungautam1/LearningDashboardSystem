package com.login;

import java.sql.*;

import com.signup.DatabaseConnection;

public class LoginDao {

	String sql = "select * from login where uname=? and pass=?";
	
	public boolean check(String uname, String pass) throws SQLException {

		try {

			Connection connection = DatabaseConnection.initializeDatabase();

			PreparedStatement st = connection.prepareStatement(sql);

			st.setString(1, uname);
			st.setString(2, pass);

			ResultSet rs = st.executeQuery();
			if (rs.next()) {
				return true;
			}
		} catch (ClassNotFoundException e) {

			e.printStackTrace();
		}

		return false;
	}
}

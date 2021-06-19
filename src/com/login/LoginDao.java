package com.login;

import java.sql.*;

import com.signup.DatabaseConnection;
public class LoginDao {
	
	String sql="select * from login where uname=? and pass=?";
//	String url="jdbc:mysql://localhost:3306/bit?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
//	String username="root";
//	String password="";
	
	
public boolean check(String uname,String pass) throws SQLException {
	
	try {
//		Class.forName("com.mysql.cj.jdbc.Driver");
//		Connection con=DriverManager.getConnection(url,username,password);
//		PreparedStatement st=con.prepareStatement(sql);
		
		Connection connection=DatabaseConnection.initializeDatabase();
		
		PreparedStatement st=connection.prepareStatement(sql);
		
		
		st.setString(1, uname);
		st.setString(2, pass);
		
		ResultSet rs=st.executeQuery();
		if(rs.next()) {
			return true;
		}
	} catch (ClassNotFoundException e) {
		
		e.printStackTrace();
	}
	
	
	return false;
}
}

package com.im.carsale;

import java.sql.Connection;
import java.sql.DriverManager;

public class DB {
	static String url = "jdbc:mysql://localhost:3306/dbcarsale";
	static String un = "root";
	static String pwd = "18372652232";
	
	static Connection con = null;
	
	public static Connection getCon() throws Exception{
		if(con==null){
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url, un, pwd);
		}
		return con;
	}
}

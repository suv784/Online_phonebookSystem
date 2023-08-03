package com.connection;

import java.sql.Connection;

import java.sql.DriverManager;

public class DbConnect {
	private static Connection conn; 
	public static Connection getConn() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver"); 
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/phonebook","root","root");
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
	}

}

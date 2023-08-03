package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.entity.User;
import com.mysql.cj.protocol.Resultset;

public class userDAO {
	private Connection conn;

	public userDAO(Connection conn) {
		super();
		this.conn = conn;
	}

	public boolean userRegister(User u) {
		boolean f = false;

		try {
			String sql = "insert into user(name,email,password)values(?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, u.getName());
			ps.setString(2, u.getEmail());
			ps.setString(3, u.getPassword());

			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;

	}

	public User userLogin(String e, String p) {
		User user = null;
		String sql = "select * from user where email=? and password=?";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, e);
			ps.setString(2, p);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				user = new User();
				user.setId(rs.getInt(1));
				user.setName(rs.getString(2));
				user.setEmail(rs.getString(3));
				user.setPassword(rs.getString(4));
			}
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		return user;

	}

}

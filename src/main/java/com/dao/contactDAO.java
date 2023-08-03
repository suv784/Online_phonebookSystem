package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.entity.Contact;

public class contactDAO {
	private Connection conn;

	public contactDAO(Connection conn) {
		super();
		this.conn = conn;
	}

	public boolean saveContact(Contact c) {
		boolean f = false;
		String sql = "insert into contact(name,email,phone,userid)values(?,?,?,?)";

		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, c.getName());
			ps.setString(2, c.getEmail());
			ps.setString(3, c.getPhone());
			ps.setInt(4, c.getUser_id());
			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace(); 
		}
		return f;
	}

	public List<Contact> getAllContact(int user_id) {
		
		List<Contact> list = new ArrayList<Contact>();
		Contact c = null;
		String sql = "Select * from contact where userid=? ";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setInt(1, user_id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				c = new Contact();
				c.setName(rs.getString(2));
				c.setEmail(rs.getString(3));
				c.setPhone(rs.getString(4));
				c.setId(rs.getInt(1)); 
				list.add(c);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	public Contact getContactByID(int cid) {
		Contact c=new Contact();
		try {
			PreparedStatement ps=conn.prepareStatement("select * from contact where id=?");
			ps.setInt(1, cid); 
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				c.setName(rs.getString(1)); 
				c.setEmail(rs.getString(2));
				c.setPhone(rs.getString(3)); 
				c.setId(rs.getInt(4));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		return c;
		
	}

}

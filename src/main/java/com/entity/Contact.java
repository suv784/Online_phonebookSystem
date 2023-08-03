package com.entity;

public class Contact { 
	private int id;
	private String name; 
	private String email;
	private String phone;
	private int user_id;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public Contact() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Contact(String name, String email, String phone, int user_id) {
		super();
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.user_id = user_id;
	}
	
	

}

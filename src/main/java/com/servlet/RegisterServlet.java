package com.servlet;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.connection.DbConnect;
import com.dao.userDAO;
import com.entity.User;
@WebServlet("/register")

public class RegisterServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	String name=req.getParameter("name"); 
	String mail=req.getParameter("email"); 
	String password=req.getParameter("pwd");
	
	User u=new User(name,mail,password);  
	HttpSession session=req.getSession();
	userDAO dao=new userDAO(DbConnect.getConn()); 
	boolean f=dao.userRegister(u);  
	
	if(f) {
		
		session.setAttribute("sucssMsg", "REGISTRATION SUCCESSFUL");
		resp.sendRedirect("register.jsp");

	} 
	else {
		session.setAttribute("errorMsg","ERROR");
		resp.sendRedirect("register.jsp");
		
	} 
	
}
}

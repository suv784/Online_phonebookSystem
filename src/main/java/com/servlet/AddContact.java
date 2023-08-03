package com.servlet;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.connection.DbConnect;
import com.dao.contactDAO;
import com.entity.Contact;
@WebServlet("/addContact")
public class AddContact extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int userid=Integer.parseInt(req.getParameter("userid"));
		String name=req.getParameter("name"); 
		String email=req.getParameter("email"); 
		String phone=req.getParameter("phone");
		Contact c=new Contact(name,email,phone,userid);
		contactDAO dao=new contactDAO(DbConnect.getConn()); 
		HttpSession session=req.getSession();
		boolean f=dao.saveContact(c);
		if(f) {
			session.setAttribute("sucssMsg", "Your contact save"); 
			resp.sendRedirect("Addcontact.jsp");
		}
		else {
			session.setAttribute("failedMsg", "Something Wrong on Server"); 
			resp.sendRedirect("Addcontact.jsp");
		}
		}
	}



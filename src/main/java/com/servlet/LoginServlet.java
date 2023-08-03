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
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email=req.getParameter("email");
		String password=req.getParameter("pwd"); 
		System.out.println(email+" "+password);
		userDAO dao=new userDAO(DbConnect.getConn());
		User u=dao.userLogin(email, password);
		HttpSession session=req.getSession();
		if(u!=null) {
			//System.out.println("User is Available="+u);
			session.setAttribute("user", u); 
			resp.sendRedirect("index.jsp");
			
		}
		else {
			//System.out.println("User is not Available="+u);
			session.setAttribute("InvalidMsg", "Invalid Email & Password"); 
			resp.sendRedirect("login.jsp");
		}
		
		
	}
	

}

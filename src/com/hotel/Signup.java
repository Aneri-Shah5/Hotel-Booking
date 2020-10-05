package com.hotel;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hotel.Dbconnection;

public class Signup extends HttpServlet{
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		try
		
		{
			HttpSession session=req.getSession();

			Connection con=Dbconnection.getConnection();
			String username=req.getParameter("uname");
			int contact=Integer.parseInt(req.getParameter("contact"));
			String email=req.getParameter("email");
			String password=req.getParameter("pass");
			//session.setAttribute("user",username);
		//	session.setAttribute("password",password);
			PreparedStatement ps=con.prepareStatement("insert into userdetails (uname,email,password,contact) values (?,?,?,?)");
			ps.setString(1, username);
			ps.setString(2, email);
			ps.setString(3, password);
			ps.setInt(4, contact);
			//System.out.println("hi");
			int i=ps.executeUpdate();
			if(i>0)
			{
				req.getRequestDispatcher("Login.jsp").forward(req, res);
			}
			else
			{
				res.sendRedirect("error.jsp");
			}
		}
		catch(Exception e)
		{
			
		}
	}
}

package com.hotel;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hotel.Dbconnection;

public class login extends HttpServlet {

	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		try
		{
			HttpSession session=req.getSession();

			Connection con=Dbconnection.getConnection();
			String username=req.getParameter("uname");
			String password=req.getParameter("pass");
			session.setAttribute("user",username);
			session.setAttribute("password",password);

			PreparedStatement st=con.prepareStatement("select * from userdetails where uname=? and password=?");
			st.setString(1, username);
			st.setString(2, password);
			ResultSet rs=st.executeQuery();
			if(rs.next())
			{
				req.getRequestDispatcher("home.jsp").forward(req, res);
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

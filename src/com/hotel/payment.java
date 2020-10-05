package com.hotel;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class payment extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection con=Dbconnection.getConnection();
		HttpSession session=request.getSession();
		int people=(int)session.getAttribute("people");
		int room=(int)session.getAttribute("room");
		int days=(int)session.getAttribute("days");
		String checkin = (String) session.getAttribute("checkin");
		String username = (String) session.getAttribute("user");
		String password = (String) session.getAttribute("password");
int price=(int)session.getAttribute("price");
		
		try
		{
			PreparedStatement st=con.prepareStatement("select * from userdetails where uname=? and password=?");
			st.setString(1, username);
			st.setString(2, password);
			ResultSet rs=st.executeQuery();
			if(rs.next())
			{
				int id=rs.getInt("userid");
				rs.close();
				st.close();
				
		PreparedStatement ps=con.prepareStatement("insert into booking (userid,checkin,price,rooms,people,days) values (?,?,?,?,?,?)");
		ps.setInt(1, id);
		ps.setString(2, checkin);
		ps.setInt(3, price);
		ps.setInt(4, room);
		ps.setInt(5, people);
		ps.setInt(6, days);

		int i=ps.executeUpdate();
		if(i>0)
		{
			request.getRequestDispatcher("booking").forward(request, response);
		}
		else
		{
			response.sendRedirect("error.jsp");
		}
		}
		}
		catch(Exception e)
		{
			
		}


	}

}

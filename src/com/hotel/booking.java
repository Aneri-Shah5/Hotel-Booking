package com.hotel;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class booking extends HttpServlet {
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection con=Dbconnection.getConnection();
		HttpSession session=request.getSession();
		PrintWriter out=response.getWriter();
		String username = (String) session.getAttribute("user");
		String password = (String) session.getAttribute("password");
		try
		{
			PreparedStatement st=con.prepareStatement("select * from userdetails where uname=? and password=?");
			st.setString(1, username);
			st.setString(2, password);
			ResultSet rst=st.executeQuery();
			if(rst.next())
			{
				int id=rst.getInt("userid");
				rst.close();
				st.close();
		PreparedStatement stmt=con.prepareStatement("select * from booking where userid=?");
		stmt.setInt(1, id);
		ResultSet rs=stmt.executeQuery();
		
		out.println("<h1 ><a href='home.jsp' style='font-family: raleway, arial, sans-serif;'> Home </a> </h1>");

		out.println("<div style=' background-image: url(photo/book.jpg);  background-position: center; background-repeat: no-repeat; background-size: cover; height: 500px;  '>");
		out.println("<table align='center' border=1 style='border-collapse:collapse;  height: 220px; width:50%; background-color:#84a9e0;   '>");
		out.println("<caption><h2>Booking detial</h2></caption>");
		
		out.println("<tr >");
		out.println("<th style='font-size:150%; ;'>Checkin </th>");
		out.println("<th style='font-size:150%;'>Days</th>");
		out.println("<th style='font-size:150%;'>Room </th>");
		out.println("<th style='font-size:150%;'>Price </th>");
		out.println("<th style='font-size:150%;'>Guest </th>");
		out.println("</tr>");
		
		while(rs.next())
		{
			int people=rs.getInt("people");
			int room=rs.getInt("rooms");
			int days=rs.getInt("days");
			int price=rs.getInt("price");
			String checkin=rs.getString("checkin");
			
			out.println("<tr>");
			out.println("<td style='font-weight: bold; text-align: center; opacity:1; '>"+checkin+"</td>");
			out.println("<td style='font-weight: bold; text-align: center;'>"+days+"</td>");
			out.println("<td style='font-weight: bold; text-align: center;'>"+room+"</td>");
			out.println("<td style='font-weight: bold; text-align: center;'>"+price+"</td>");
			out.println("<td style='font-weight: bold; text-align: center;'>"+people+"</td>");
			out.println("</tr>");

		}
out.println("</table>");

out.println("</div>");
		}
		}
		catch(Exception e)
		{
			
		}
}
}

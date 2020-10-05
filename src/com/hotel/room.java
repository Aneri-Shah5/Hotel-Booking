package com.hotel;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class room extends HttpServlet{
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		  String checkin = req.getParameter("checkin");
		  int days = Integer.parseInt(req.getParameter("days"));
		  int people=Integer.parseInt(req.getParameter("people"));
		  int room=Integer.parseInt(req.getParameter("room"));
		  
		  int price=days*3000;
		  
		/*req.setAttribute("people",people);
		req.setAttribute("room",room);
		req.setAttribute("checkin",checkin);
		req.setAttribute("days",days);
		RequestDispatcher rd=req.getRequestDispatcher("pay");
		rd.forward(req, res);*/
		
		//req.getRequestDispatcher("payment.jsp").forward(req, res);
		
		  HttpSession session=req.getSession();
		  session.setAttribute("people",people);
		  session.setAttribute("room",room);
		  session.setAttribute("checkin",checkin);
		  session.setAttribute("days",days);
		  session.setAttribute("price", price);
		  res.sendRedirect("payment.jsp");
		
}
}
package com.hotel;

import java.sql.Connection;
import java.sql.DriverManager;

public class Dbconnection {

	private static Connection con;
	static
	{
		try {
			String url="jdbc:mysql://localhost:3301/hotel";
			 String name="root";
			 String pass="root";
			 Class.forName("com.mysql.jdbc.Driver");
				con=DriverManager.getConnection(url, name, pass);
				
		}catch(Exception e)
		{
			
		}
	}
	public static Connection getConnection()
	{
		return con;
	}
}

package authentication;

import java.sql.*;
import java.io.*;
import java.lang.*;

public class sqlmagic
{
	Connection c = null;
	ResultSet rs = null;
	Statement s =null;
	String user = new String("");
	String pass = new String("");
	String bucket = new String("");
	int rowcount=0;
	public int try_auth(String username,String pass)
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			c= DriverManager.getConnection("jdbc:mysql://localhost:3306/internship2012","root","toor");
			s=c.createStatement();
			rs = s.executeQuery("Select username,password FROM userFileArea WHERE username="+"'"+username+"' AND password ="+"'"+pass+"'");
			while(rs.next())
			{
				setUser(rs.getString("username"));
				setPassword(rs.getString("password"));
				rowcount++;
			}

			rs.close();
			s.close();
			c.close();
			
			if(rowcount==0)
			{
				return 0;
			}
			else
			{
				return 1;
			}
		}
		catch(Exception e)
		{
		System.out.println(e.getMessage());
		}
		return 0;
	}

	public void setUser(String user)
	{
		this.user=user;
	}
	
	public void setPassword(String pass)
	{
		this.pass=pass;
	}

	public String getUser()
	{
		return user;
	}

	public String getPassword()
	{
		return pass;
	}
}

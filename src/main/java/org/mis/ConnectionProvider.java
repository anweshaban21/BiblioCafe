package org.mis;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionProvider {
static Connection con;
public static Connection createC()
{
	String url="jdbc:mysql://localhost:3306/bibliocafe";
	String uId="root";
	String uPass="mukta@21A";
	try
	{
	Class.forName("com.mysql.cj.jdbc.Driver");
	con=DriverManager.getConnection(url,uId,uPass);
	}catch(Exception e) {}
	return con;
}
}

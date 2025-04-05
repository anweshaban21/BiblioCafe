package org.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.mis.ConnectionProvider;
import org.model.bean.UserBean;

public class LoginDao {
public boolean login(UserBean bean)
{
	//String uname=bean.getName();
	String email=bean.getEmail();
	String pass=bean.getPass();
	//String phno=bean.getPhno();
	//String address=bean.getAns();
	Connection con;
	PreparedStatement pstm;
	ResultSet rs;
	boolean status=false;
	try
	{
		con=ConnectionProvider.createC();
		pstm=con.prepareStatement("select email and pass from customers where email=? and pass=?");
		
		pstm.setString(3, email);
		pstm.setString(4, pass);
		//pstm.setString(3, pass);
		
		rs=pstm.executeQuery();
		if(rs!=null)
			status=true;
			
		
	}catch(Exception e) {}
	return status;
}
}

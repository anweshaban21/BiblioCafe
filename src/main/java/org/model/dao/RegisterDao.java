package org.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import org.mis.ConnectionProvider;
import org.model.bean.UserBean;

public class RegisterDao {
public int insert(UserBean bean)
{
	String name=bean.getName();
	String email=bean.getEmail();
	String phno=bean.getPhno();
	String pass=bean.getPass();
	String ans=bean.getAns();
	
	Connection con;
	PreparedStatement pstm;
	int i=0;
	try
	{
		con=ConnectionProvider.createC();
		pstm=con.prepareStatement("insert into customers(uname,email,pass,contact,address) values(?,?,?,?,?)");
		pstm.setString(1, name);
		pstm.setString(2, email);
		pstm.setString(3, pass);
		pstm.setString(4, phno);
		pstm.setString(5, ans);
		i=pstm.executeUpdate();
	}catch(Exception e) {}
	return i;
	
}
}

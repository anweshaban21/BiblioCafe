package org.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import org.mis.ConnectionProvider;
import org.model.bean.ProductBean;
public class ProductDao {
public int addProduct(ProductBean bean)
{
	
	String prod_Id=bean.getProd_Id();
	String prod_Name=bean.getProd_Name();
	String category=bean.getCategory();
	String img=bean.getImg();
	int qty=bean.getQty();
	
	double price=bean.getPrice();
	
	Connection con;
	PreparedStatement pstm;
	int i=0;
	try
	{
	con=ConnectionProvider.createC();
	pstm=con.prepareStatement("insert into product(prod_Id,prod_Name,category,img,qty,price) values(?,?,?,?,?,?)");
	pstm.setString(1, prod_Id);
	pstm.setString(2, prod_Name);
	pstm.setString(3, category);
	pstm.setString(4, img);
	pstm.setInt(5, qty);
	pstm.setDouble(6, price);
	
  i=pstm.executeUpdate();
}catch(Exception e) {}
	return i;
}

}

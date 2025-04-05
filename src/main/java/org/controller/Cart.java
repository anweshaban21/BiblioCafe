package org.controller;


import java.sql.*;

	import java.io.IOException;
	import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
	import javax.servlet.annotation.WebServlet;
	import javax.servlet.http.HttpServlet;
	import javax.servlet.http.HttpServletRequest;
	import javax.servlet.http.HttpServletResponse;
	import javax.servlet.http.HttpSession;

import org.mis.ConnectionProvider;
//import org.model.bean.UserBean;
	//import org.model.dao.RegisterDao;

	/**
	 * Servlet implementation class Register
	 */
	@WebServlet("/AddToCart")
	public class Cart extends HttpServlet {
		private static final long serialVersionUID = 1L;

	    /**
	     * Default constructor. 
	     */
	    

		/**
		 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
		 */
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
		String id=request.getParameter("productId");
		
		HttpSession session=request.getSession();
		String ProductId = null;
		String ProductName=null;
		String Category = null;
		String Image=null;
		int Quantity=0;
		double Price=0;
		Connection conn = null;
		Connection con=null;
		PreparedStatement pstm = null;
		PreparedStatement pstm2 = null;
		ResultSet rs = null;
		try {
		conn= ConnectionProvider.createC();
		pstm = conn.prepareStatement("select * from product where prod_Id=?");
		pstm.setString(1,id);
		rs = pstm.executeQuery();

		while (rs.next()) {
		ProductId=rs.getString(1);
		ProductName=rs.getString(2);
		Category=rs.getString(3);
		Image=rs.getString(4);
		Quantity=rs.getInt(5);
		Price=rs.getDouble(6);
		

              }
	}catch(Exception e) {}
		int i=0;
		try
		{
			con=ConnectionProvider.createC();
			pstm2=con.prepareStatement("insert into cart(prod_id,prod_name,price) values(?,?,?)");
			pstm2.setString(1,ProductId);
			pstm2.setString(2,ProductName);
			pstm2.setDouble(3,Price);
			
			i=pstm2.executeUpdate();
		}catch(Exception e) {}
		if(i!=0) {
			response.sendRedirect("cart.jsp");
		}
		
		}
	}

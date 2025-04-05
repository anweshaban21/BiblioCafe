package org.controller;


import java.sql.*;
import java.util.*;
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
	@WebServlet("/Ordernow")
	
	public class OrderNow extends HttpServlet {
	
		String ProductId = null;
		String ProductName=null;
		String Category = null;
		String Image=null;
		int Quantity=0;
		double Price=0;
		String p=null;
		public List<String> list=new ArrayList<>();
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
		
		p=Price+"";
		list.add(ProductName);
		list.add(Image);
		list.add(p);
		response.sendRedirect("orderPlaced.jsp?msg=valid");

              }
	}catch(Exception e) {}
		
		
		
		}
		public List<String> getV(){
			list.add(ProductName);
			list.add(Image);
			list.add(p);
			return list;
			
		}
		
		
		
	}

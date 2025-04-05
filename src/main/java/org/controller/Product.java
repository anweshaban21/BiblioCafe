package org.controller;

import java.io.IOException;
//import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.model.bean.ProductBean;
import org.model.dao.ProductDao;

/**
 * Servlet implementation class Product
 */
@WebServlet("/Product")
public class Product extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//PrintWriter pw=response.getWriter();
		String prod_Id=request.getParameter("prodid");
		String prod_Name=request.getParameter("prodname");
		String category=request.getParameter("category");
		String img=request.getParameter("fname");
		String quantity=request.getParameter("qty");
		String price2=request.getParameter("price");
		int qty=Integer.parseInt(quantity);
		double price=Double.parseDouble(price2);
		ProductBean pb=new ProductBean();
		pb.setProd_Id(prod_Id);
		pb.setProd_Name(prod_Name);
		pb.setCategory(category);
		pb.setImg(img);
		 
		pb.setQty(qty);
		 
		pb.setPrice(price);
		
		ProductDao pd=new ProductDao();
		int i=pd.addProduct(pb);
		if(i!=0) {
			response.sendRedirect("admin_dash.jsp?msg=valid");
		}
		else
			response.sendRedirect("adminLogin.jsp?msg=invalid");
	}

}

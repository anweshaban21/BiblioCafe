package com.registration;
import javax.servlet.annotation.*;
import java.sql.*;
import java.io.*;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.SQLSyntaxErrorException;

/**
 * Servlet implementation class RegistrationServelet
 */
@WebServlet("/register")
public class RegistrationServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
//    public RegistrationServelet() {
//        super();
//        // TODO Auto-generated constructor stub
//    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String uname=request.getParameter("name");
		String email=request.getParameter("email");
		String pass=request.getParameter("pass");
		String contact=request.getParameter("contact");
		String address=request.getParameter("address");
		//RequestDispatcher dis=null;
		Connection con=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
		    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bibliocafe","root","mukta@21A");
			PreparedStatement pst=con.prepareStatement("insert into customers(uname,email,pass,contact,address) values(?,?,?,?,?)");
			pst.setString(1, uname);
			pst.setString(2, email);
			pst.setString(3, pass);
			pst.setString(4, contact);
			pst.setString(5, address);
			
			int rowCount=pst.executeUpdate();
			RequestDispatcher dis=request.getRequestDispatcher("registration.jsp");
			if(rowCount>0) {
				request.setAttribute("status","success");
			}
			else {
				request.setAttribute("status","failed");
			}
			dis.forward(request,response);
		}
		catch(Exception e) {
			e.printStackTrace();
			
		}
		finally {
			//con.close();
		}
	}

}

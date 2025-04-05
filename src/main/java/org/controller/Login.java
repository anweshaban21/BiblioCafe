package org.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.model.bean.UserBean;
import org.model.dao.LoginDao;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//String uname=request.getParameter("username");
		String email=request.getParameter("email");
		String pass=request.getParameter("password");
		//String contact=request.getParameter("contact");
		//String adds=request.getParameter("address");
		HttpSession session=request.getSession();
		UserBean ubean=new UserBean();
		ubean.setEmail(email);
		//ubean.setEmail(email);
		ubean.setPass(pass);
		//ubean.setPhno(contact);
		//ubean.setAns(adds);
		
		LoginDao ld=new LoginDao();
		boolean status=ld.login(ubean);
		if(status)
		{
			response.sendRedirect("index.jsp?msg=valid");
			session.setAttribute("EMAIL", email);
			//response.sendRedirect("index2.jsp");
		}
		else
		{
			response.sendRedirect("registration.jsp?msg=invalid");
		}
	}

}

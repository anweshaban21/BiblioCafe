package org.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.model.bean.UserBean;
import org.model.dao.RegisterDao;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public Register() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	response.setContentType("text/html");
	PrintWriter pw=response.getWriter();
	String name=request.getParameter("name");
	String email=request.getParameter("email");
	String phno=request.getParameter("contact");
	String pass=request.getParameter("pass");
	String answer=request.getParameter("address");
	HttpSession session=request.getSession();
	UserBean ubean=new UserBean();
	ubean.setName(name);
	ubean.setEmail(email);
	ubean.setPhno(phno);
	ubean.setPass(pass);
	ubean.setAns(answer);
	
	RegisterDao rd=new RegisterDao();
	int i=rd.insert(ubean);
	if(i!=0)
	{
		session.setAttribute("EMAIL", email);
		response.sendRedirect("index.jsp?msg=valid");
		
		pw.println("<h2>Sucessfully Registered!</h2>");
	}
	else
	{
		response.sendRedirect("registration.jsp?msg=invalid");
		//pw.println("<h2>Their is some issue!</h2>");
	}
	}

}

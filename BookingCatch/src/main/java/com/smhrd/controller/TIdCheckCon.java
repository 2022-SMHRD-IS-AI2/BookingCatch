package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.TrainerDAO;

/**
 * Servlet implementation class TIdCheckCon
 */
public class TIdCheckCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	String inputE = request.getParameter("inputE");
	TrainerDAO dao = new TrainerDAO();
	boolean checkE = dao.emailCheck(inputE);
	PrintWriter out = response.getWriter();
	out.print(checkE);
	
	
	
	
	}

}

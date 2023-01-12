package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class LogOutCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		HttpSession session = request.getSession();
		
		//session.invalidate();
		session.removeAttribute("loginMember");
		
//		response.sendRedirect("Main.jsp");
	
		// 로그아웃시 alert창 출력 후 페이지 이동
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter writer = response.getWriter();
		writer.println("<script>alert('로그아웃 되셨습니다.'); location.href='Main.jsp';</script>"); 
		writer.close();
	
	}

}

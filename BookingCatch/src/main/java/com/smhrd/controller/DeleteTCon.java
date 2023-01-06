package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.MemberDAO;
import com.smhrd.model.TrainerDAO;


public class DeleteTCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		int cnt  =new TrainerDAO().deleteTrainer(id);
		if(cnt>0) {
			System.out.println("회원탈퇴 성공");
			response.sendRedirect("Main.jsp");
		}else {
			System.out.println("회원탈퇴 실패");
			response.sendRedirect("Main.jsp");
		}
		
		
		
		
	}

}

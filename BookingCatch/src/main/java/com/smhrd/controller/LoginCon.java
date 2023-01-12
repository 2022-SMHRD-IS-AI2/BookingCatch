package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.MemberDAO;
import com.smhrd.model.MemberVO;
import com.smhrd.model.TrainerDAO;
import com.smhrd.model.TrainerVO;

public class LoginCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String who = request.getParameter("who");
		
		System.out.println(who);
		
		if(who == null) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter writer = response.getWriter();
			writer.println("<script>alert('로그인 유형을 선택해 주세요!'); location.href='Login.jsp';</script>"); 
			writer.close();
			
		}
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		
		
		if(who.equals("U")) {
			
			
			MemberVO vo = new MemberVO(id,pw);
			MemberDAO dao = new MemberDAO();
			MemberVO loginMember = dao.selectMember(vo);

			if(loginMember != null) { 
				System.out.println("로그인 성공");
				
				HttpSession session = request.getSession();
				session.setAttribute("loginMember", loginMember);
				session.setAttribute("who", who);
				response.sendRedirect("Main.jsp");
			}else {
				System.out.println("로그인 실패");
				response.sendRedirect("Main.jsp");
			}
			
		}else if (who.equals("T")) {
			
			TrainerVO vo =new TrainerVO(id,pw);
			TrainerDAO dao = new TrainerDAO();
			TrainerVO loginMember = dao.selectTrainer(vo);

			if(loginMember != null) { 
				System.out.println("로그인 성공");
				
				HttpSession session = request.getSession();
				session.setAttribute("loginMember", loginMember);
				session.setAttribute("who", who);
				response.sendRedirect("Main.jsp");
			}else {
				System.out.println("로그인 실패");
				response.sendRedirect("Main.jsp");
			}
			
			
			
		}
		
		
		
		
		
		
		

	}

}

package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.TrainerDAO;
import com.smhrd.model.TrainerVO;

public class UpdateTInfoCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		HttpSession session= request.getSession();
		TrainerVO loginTrainer = (TrainerVO)session.getAttribute("loginTrainer");
		String id = loginTrainer.getId();
		String pw = request.getParameter("pw");
		String mbti = request.getParameter("mbti");
		String center= request.getParameter("center");
		String ttype = request.getParameter("ttype");
		String phone = request.getParameter("phone");
		
		
		
		TrainerVO vo = new TrainerVO(id,pw,mbti,center,ttype,phone);
		
		TrainerDAO dao = new TrainerDAO();
		int cnt = dao.updateTrainer(vo);
		if(cnt>0) {
			System.out.println("회원정보수정 성공");
			session.setAttribute("loginTrainer", vo);
//			response.sendRedirect("UpdateInfo.jsp");
			
			PrintWriter writer = response.getWriter();
    		writer.println("<script>alert('수정 성공!'); location.href='UpdateTInfo.jsp';</script>"); 
    		writer.close();
		}else {
			System.out.println("회원정보수정 실패");
//			response.sendRedirect("UpdateInfo.jsp");
			PrintWriter writer = response.getWriter();
    		writer.println("<script>alert('수정 실패!'); location.href='UpdateTInfo.jsp';</script>"); 
    		writer.close();
		}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	}

}

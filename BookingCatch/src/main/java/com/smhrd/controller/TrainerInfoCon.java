package com.smhrd.controller;

import java.io.IOException;
import java.math.BigDecimal;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.TrainerInfoDAO;
import com.smhrd.model.TrainerInfoVO;
import com.smhrd.model.TrainerVO;


public class TrainerInfoCon extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		자기소개 자격증명 센터 스케줄 프로그램 후기(사용자입력)X 레슨가격 수업방법여부 공지사항
		HttpSession session = request.getSession();
		TrainerVO vo = (TrainerVO)session.getAttribute("loginTrainer");
		String trainerId = vo.getId();
		
		
		
		String introduce = request.getParameter("introduce");
		String certificate = request.getParameter("certificate");
		String center = request.getParameter("center");
		String schedule = request.getParameter("schedule");
		String program = request.getParameter("program");
		String price = request.getParameter("price");
		String method = request.getParameter("method");
		String notice = request.getParameter("notice");
		int likes = 0;
		
		TrainerInfoVO tVo = new TrainerInfoVO(trainerId, introduce, certificate, center, schedule, program, price, method, notice,likes);
		int cnt = new TrainerInfoDAO().insertTrainerInfo(tVo);
		
		if(cnt>0) {
			response.sendRedirect("NewMain.jsp");
			System.out.println("성공!");
		}else {
			response.sendRedirect("NewMain.jsp");
			System.out.println("실패!");
			
		}
		
		
		
		
		
	}

}

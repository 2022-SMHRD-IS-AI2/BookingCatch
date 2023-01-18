package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.MemberDAO;
import com.smhrd.model.MemberVO;
import com.smhrd.model.TrainerDAO;
import com.smhrd.model.TrainerVO;

public class JoinTCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String birth = request.getParameter("birth");
		String mbti = request.getParameter("mbti");
		String gender = request.getParameter("gender");
		String center = request.getParameter("center");
		String ttype = request.getParameter("ttype");
		String phone = request.getParameter("phone");
		String img_path = request.getParameter("img_path");
		String intro = request.getParameter("intro");
		double score = 0.0;

		TrainerVO vo = new TrainerVO(id, pw, name, birth, mbti, gender, center, ttype, null, phone, img_path, intro, score);
		int cnt = new TrainerDAO().joinTrainer(vo);
		if (cnt > 0) {
			System.out.println("회원가입 성공");
			
//			회원가입 후 갈 경로 선택-> 아마 메인?
//			response.sendRedirect("Main.jsp");
			PrintWriter writer = response.getWriter();
	         writer.println("<script>alert('환영합니다!'); location.href='NewMain.jsp';</script>"); 
	         writer.close();
		} else {
			// 회원가입 실패시 갈 경로 선택
			System.out.println("회원가입 실패");
			response.sendRedirect("JoinT.jsp");
		}

	}

}

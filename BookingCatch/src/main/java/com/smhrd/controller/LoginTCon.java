package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.MemberDAO;
import com.smhrd.model.MemberVO;
import com.smhrd.model.TrainerDAO;
import com.smhrd.model.TrainerVO;

public class LoginTCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		TrainerVO vo = new TrainerVO(id, pw);
		TrainerDAO dao = new TrainerDAO();
		TrainerVO loginTrainer = dao.selectTrainer(vo);

		if (loginTrainer != null) {
			System.out.println("로그인 성공");

			HttpSession session = request.getSession();
			session.setAttribute("loginTrainer", loginTrainer);
			response.sendRedirect("Main.jsp");
		} else {
			System.out.println("로그인 실패");
			response.sendRedirect("Main.jsp");
		}

	}

}

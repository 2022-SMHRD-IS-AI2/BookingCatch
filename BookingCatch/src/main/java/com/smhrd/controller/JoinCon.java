package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.javassist.expr.NewExpr;

import com.smhrd.model.MemberDAO;
import com.smhrd.model.MemberVO;


public class JoinCon extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String birth = request.getParameter("birth");
		String mbti = request.getParameter("mbti");
		String address = request.getParameter("address");
		String gender = request.getParameter("phone");
		String phone = request.getParameter("gender");
		
		System.out.println(id);
		
		MemberVO vo = new MemberVO(id,pw,name,birth,mbti,address,phone,gender);
		int cnt = new MemberDAO().joinMember(vo);
		if(cnt>0) {
			System.out.println("회원가입 성공");
			response.sendRedirect("Main.jsp");
//			회원가입 후 갈 경로 선택-> 아마 메인?
		}else {
			//회원가입 실패시 갈 경로 선택
			System.out.println("회원가입 실패");
			response.sendRedirect("Main.jsp");
		}
		
		
		
	}

}

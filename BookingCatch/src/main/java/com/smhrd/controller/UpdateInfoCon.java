package com.smhrd.controller;

import java.io.IOException;
import java.sql.Timestamp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.MemberDAO;
import com.smhrd.model.MemberVO;

public class UpdateInfoCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session= request.getSession();
		MemberVO loginMember = (MemberVO)session.getAttribute("loginMember");
		String id = loginMember.getId();
		String pw = request.getParameter("pw");
		String name = loginMember.getName();
		String birth = loginMember.getBirth();
		String mbti = request.getParameter("mbti");
		String address= request.getParameter("address");
		String phone = request.getParameter("phone");
		String gender = loginMember.getGender();
		
		MemberVO vo = new MemberVO(id,pw,name,birth,mbti,address,phone,gender); 
		  
		MemberDAO dao = new MemberDAO();
		int cnt = dao.updateMember(vo);
		
		if(cnt>0) {
			System.out.println("회원정보수정 성공");
			session.setAttribute("loginMember", vo);
			response.sendRedirect("UpdateInfo.jsp");
		}else {
			System.out.println("회원정보수정 실패");
			response.sendRedirect("UpdateInfo.jsp");
		}
		
		
		
		
		
		
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	}

}

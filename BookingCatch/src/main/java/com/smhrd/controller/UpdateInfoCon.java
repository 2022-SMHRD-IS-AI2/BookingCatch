package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
		String mbti = request.getParameter("mbti");
		String address= request.getParameter("address");
		
		String phone = request.getParameter("phone");
		String gender = loginMember.getGender();
		
		/* MemberVO vo = new MemberVO(id,pw,name,mbti,address,b_date,phone,gender); */
		
		
		
		
		
		
		
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	}

}

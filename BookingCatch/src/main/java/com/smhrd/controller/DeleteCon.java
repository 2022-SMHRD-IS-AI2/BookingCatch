package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.MemberDAO;


public class DeleteCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//id를 입력해서 탈퇴하는 것은 다른 사람이 탈퇴시킬 수도 있으니
		//id를 세션으로 만들어서 탈퇴하는 걸로 바꾸기!!!
		
		String id = request.getParameter("id");
		int cnt = new MemberDAO().deleteMember(id);
		
		if(cnt>0) {//회원가입 성공
			System.out.println("회원가입 성공");
			response.sendRedirect("Main.jsp");
			
		}else { //회원가입 실패
			response.sendRedirect("Main.jsp");
		}
		
		
		
		
		
		
	}

}

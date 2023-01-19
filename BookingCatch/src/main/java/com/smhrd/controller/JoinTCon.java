package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.smhrd.model.TrainerDAO;
import com.smhrd.model.TrainerVO;

public class JoinTCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
		request.setCharacterEncoding("UTF-8");
		   
		// MultipartRequest에서 필요한 매개변수 설정
		// 1. 모든 요청의 정보가 담겨있는 request객체
		// 2. 업로드 된 파일(이미지)을 저장할 경로
	    String path = request.getServletContext().getRealPath("/file");
	    System.out.println(path);
	    
		// 3. 파일의 max size
	    int maxSize = 10*1024*1024;
	    
		// 4. 인코딩 방식
	    String encoding = "UTF-8";
	    
		// 5. 중복제거 -> 파일명 뒤에 숫자 붙여주는 객체
        DefaultFileRenamePolicy rename = new DefaultFileRenamePolicy();
		// 파일 업로드 -> MultipartRequest -> cos.jar
		MultipartRequest multi = new MultipartRequest(request,path,maxSize,encoding,rename);
	
        // DB에 저장하기 위해서 게시글 정보 가져오기
		
	    // 한글이름은 인코딩해야 나중에 이미지 확인 가능!!
	    // URLEncoder.encode(인코딩할 값, 인코딩 방식)
	    // Integer.parseInt(형변환할 값)
	    String img_path;
	    
	    if(multi.getFilesystemName("filename") == null){
	    	img_path = "";
	    }else {
	    	img_path = URLEncoder.encode(
	      multi.getFilesystemName("filename"),"UTF-8");
	    }
	    
	    String content = multi.getParameter("content");
		String id = multi.getParameter("id");
		String pw = multi.getParameter("pw");
		String name = multi.getParameter("name");
		String birth = multi.getParameter("birth");
		String mbti = multi.getParameter("mbti");
		String gender = multi.getParameter("gender");
		String center = multi.getParameter("center");
		String ttype = multi.getParameter("ttype");
		String phone = multi.getParameter("phone");
		String intro = multi.getParameter("intro");
		double score = 0.0;

		TrainerVO vo = new TrainerVO(id, pw, name, birth, mbti, gender, center, ttype, null, phone, img_path, intro, score);
		int cnt = new TrainerDAO().joinTrainer(vo);
		if (cnt > 0) {
			System.out.println("회원가입 성공");
			
//			회원가입 후 갈 경로 선택-> 아마 메인?
//			response.sendRedirect("Main.jsp");
			  response.setContentType("text/html; charset=UTF-8");
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

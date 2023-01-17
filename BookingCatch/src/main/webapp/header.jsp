<%@page import="com.smhrd.model.TrainerVO"%>
<%@page import="com.smhrd.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
 <link rel="stylesheet" href="./asset/css/NewMain.css">
</head>
<body>
 <%
   
   MemberVO loginMember=null;
   TrainerVO loginTrainer=null; 
   
   if(session.getAttribute("loginMember")==null&&session.getAttribute("loginTrainer")==null){
      System.out.print("첫 메인");
   }else if(session.getAttribute("loginMember")!=null){
      loginMember = (MemberVO) session.getAttribute("loginMember");
   }else{
      loginTrainer = (TrainerVO)session.getAttribute("loginTrainer");
   }
   %>
<header id="header">
            
            <ul class="want-to-be-fixed">
                <li><a href="TrainerInfo.jsp"><span class="en">Trainer</span><span class="ko">선생님</span></a></li>
                <li><a href="CenterLocation.jsp"><span class="en">Center</span><span class="ko">운동센터</span></a></li>
                <li id="special-li" class="special-li"><a href="board.jsp"><span class="en">Community</span><span class="ko">게시판</span></a></li>
                <li><a href="#"><span class="en">AboutUs</span><span class="ko">우리는</span></a></li>
            </ul>



            <a href="NewMain.jsp"><h1>HelinCare</h1></a>
            
            <%
            if (loginMember == null && loginTrainer ==null){ 
            %>
            <div class="ul-forSize">
                <ul>
                    <li><a href="Login.jsp">로그인</a></li>
                    <li><a href="JoinWho.jsp">회원가입</a></li>
                    <li><a href="#">고객센터</a></li>
                    <li><i class="fa-regular fa-heart"></i></li>
                </ul>
            </div>
            <%
            }else{
            %><%
           		if(loginTrainer!=null){%>    
			<div class="ul-forSize">
                <ul>
                	<li><%=loginTrainer.getId() %>님</li>
                    <li><a href="UpdateTInfo.jsp">개인정보수정</a></li>
                    <li><a href="#">예약확인</a></li>
                    <li><a href="LogOutCon">로그아웃</a></li>
                    <li><i class="fa-regular fa-heart"></i></li>
                </ul>
            </div>
            
            <%
            	} else if(loginMember.getId().equals("admin")){ 
            %>   
            
            <div class="ul-forSize">
                <ul>
                	<li>관리자 계정</li>
                    <li><a href="#">전체회원정보</a></li>
                    <li><a href="UpdateInfo.jsp">관리자정보수정</a></li>
                    <li><a href="LogOutCon">로그아웃</a></li>
                    <li><i class="fa-regular fa-heart"></i></li>
                </ul>
            </div>
            <%
           		} else if(loginMember!=null){
               System.out.print(loginMember.getId());
            %>
            <div class="ul-forSize">
                <ul>
                	<li><%=loginMember.getId() %>님</li>
                    <li><a href="UpdateInfo.jsp">개인정보수정</a></li>
                    <li><a href="#">예약확인</a></li>
                    <li><a href="LogOutCon">로그아웃</a></li>
                    <li><i class="fa-regular fa-heart"></i></li>
                </ul>
            </div>
            <%}}%>
        </header>
        <div class="menu-hidden" id="menu-hidden">
            <a href="#">Tip게시판</a><a href="#">공감게시판</a>
        </div>
        
        
            <script src="asset/js/NewMain.js"></script>
</body>
</html>
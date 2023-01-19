<%@page import="com.smhrd.model.MemberVO"%>
<%@page import="com.smhrd.model.TrainerVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.smhrd.model.tipBoardVO"%>
<%@page import="com.smhrd.model.tipBoardDAO"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<!DOCTYPE html
   PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport"
        content="width=device-width, initial-scale=1.0, maximum-scale=3.0, minimum-scale=1.0, user-scalable=yes, target-density-dpi=medium-dpi" />
    <title>Tip게시판</title>
    <link rel="stylesheet" href="asset/css/board.css" />
    <link rel="stylesheet" href="asset/css/Boarder.css">
    <link rel="stylesheet" href="asset/css/NewMain.css">
     <link rel="preconnect" href="https://fonts.googleapis.com">
   <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
   <script src="../js/function.js"></script>
   <link href="https://fonts.googleapis.com/css2?family=Amatic+SC&family=Gloria+Hallelujah&family=Gowun+Batang&family=Kanit&family=Lilita+One&family=Lobster&family=Michroma&family=Montserrat+Alternates&family=Moon+Dance&family=Play&family=Rubik+80s+Fade&family=Shadows+Into+Light&display=swap" rel="stylesheet">
    <script src="http://code.jquery.com/jquery-latest.js"></script>


</head>

<body>
	<%	
		int num = Integer.parseInt(request.getParameter("num"));
		tipBoardVO vo = new tipBoardDAO().detailTipBoard(num); 
		
	%>
   <div id="wrap">
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
    
    <div class="wrap">
     
        <header id="header">
            <ul class="want-to-be-fixed">
                <li><a href="Trainers.jsp"><span class="en">Trainer</span><span class="ko">선생님</span></a></li>
                <li><a href="CenterLocation.jsp"><span class="en">Center</span><span class="ko">운동센터</span></a></li>
                <li id="special-li" class="special-li"><a href="tipBoardMain.jsp"><span class="en">Community</span><span class="ko">게시판</span></a></li>
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
                <ul id="ul-flexiblet">
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
                <ul id="ul-flexibleu">
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
            <a href="tipBoardMain.jsp">Tip게시판</a><a href="#">공감게시판</a>
        </div>
            <!-- 헤더부분 양심없이 길다 진짜  -->
     
      <div id="sub_container">
         <div class="sub-wrap">
            <div class="sub-content">
               <div class="sub-header">
                  <h3 class="sub_tit">Tip 게시판 상세보기</h3>
               </div>
               <div class="sub-cont">
                  <div class="board-wrap">
                     <div class="board-view">
                        <div class="board-view_info">
                           <span class="subject"><%=vo.getTitle()%></span>
                           <div class="board-view_list">
                              <ul>
                                
                                 <li>
                                    <span class="title">작성자</span>
                                    <span class="text"><%=vo.getWriter() %></span>
                                 </li>
                                 <li>
                                    <span class="title">작성일</span>
                                    <span class="text"><%=vo.getDate() %></span>
                                 </li>
                                 <li>
                                    <span class="title">조회수</span>
                                    <span class="text"><%=vo.getLikes() %></span>
                                 </li>
                              </ul>
                           </div>                           
                        </div>
                        <div class="board-cont" <%=vo.getContent()%>>
                        
                                   <div class="video_con"><iframe src="https://youtu.be/Dr-G9I6Aiiw" title="YouTube video player" frameborder="0" 
                                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                        <p class="board-cont">
                                          <%=vo.getContent()%>
                                        </p>
                                        <img src="file/<%=vo.getFilename()%>" alt="씨앙"></img>
                                    </div> 
                        </div>
                       <!--  <div class="board-nav">
                           <ul>
                              <li>
                                 <p class="board-nav_title prev">이전글</p>
                                 <a href="">비로소 눈을 감다<span class="board-nav_date">2019.11.13</span></a>
                              </li>
                              <li>
                                 <p class="board-nav_title next">다음글</p>
                                 <a href="">등록된 다음 글이 없습니다.</span></a>
                              </li>
                           </ul>                              
                        </div> -->
                        <div class="board-btn">
                           
                          <button type="button" class="btn_list"><a href="tipBoardMain.jsp">목록</a></button>
                          <button type="button" class="btn_list"><a href="tipBoardMain.jsp">수정</a></button>
                          <button type="button" class="btn_list"><a href="tipBoardMain.jsp">삭제</a></button>
                          
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
     <script src="asset/js/NewMain.js"></script>
</body>

</html>
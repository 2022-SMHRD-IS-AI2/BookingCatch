<%@page import="com.smhrd.model.TrainerVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.smhrd.model.tipBoardVO"%>
<%@page import="com.smhrd.model.tipBoardDAO"%>
<!DOCTYPE html
   PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport"
        content="width=device-width, initial-scale=1.0, maximum-scale=3.0, minimum-scale=1.0, user-scalable=yes, target-density-dpi=medium-dpi" />
    <title>게시판 되냐?</title>
    <link rel="stylesheet" href="asset/css/board.css" />
    <link rel="stylesheet" href="asset/css/TrainerSearch.css">
    <link rel="stylesheet" href="asset/css/Trainerprofile.css">
    <link rel="stylesheet" href="asset/css/Boarder.css">


   <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
   <script src="../js/function.js"></script>


</head>

<body>
	<%	
		int num = Integer.parseInt(request.getParameter("num"));
		tipBoardVO vo = new tipBoardDAO().detailTipBoard(num); 
		
		TrainerVO loginTrainer = (TrainerVO)session.getAttribute("loginTrainer"); 
	%>
   <div id="wrap">
        <header>
            <div class="header1">
                <a href="Main.jsp"><img src="" alt="HelinCatch" class="logo"></a>
                <div class="header-center">
                    <input type="text" class="header-search" placeholder="#나의#트레이너찾기">
                    <button class="search-btn">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                </div>
                <div class="for-space"></div>
                <ul class="header1-ul">
                    <li class="menu-letter"><a href="Login.jsp">로그인</a></li>
                    <li class="menu-letter"><a href="Join.jsp">회원가입</a></li>
                    <li class="menu-letter"><a href="#">고객센터</a></li>
                    <li class="menu-letter" id="addEvent">
                        <i class="fa-regular fa-heart"></i>
                        <div id="hidden-list">
                            <p>My Trainer</p>
                            <i class="fa-solid fa-xmark" id="close" >하트</i>                  
                        </div>
                    </li>
                </ul>
            </div>
            <div class="header2">
                <ul class="header2-ul">
                    <li>
                        <a href="#">트레이너</a>
                        <ul class="hidden">
                            <li><a href="">지역별</a></li>
                            <li><a href="">운동별</a></li>
                        </ul>
                    </li>
                <li><a href="#">센터</a></li>
                <li>
                    <a href="#">커뮤니티</a>
                    <ul class="hidden">
                        <li><a href="tipBoardMain.jsp">Tip게시판</a></li>
                        <li><a href="">공감게시판</a></li>
                    </ul>
                </li>
                <li><a href="#">우리는?</a></li>
                </ul>
            </div>
        </header>
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
                                    <span class="text"><%=loginTrainer.getName() %></span>
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
                        
                                   <div class="video_con"><iframe src="https://www.youtube.com/embed/QdaBigmnXNs" title="YouTube video player" frameborder="0" 
                                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                        <p class="board-cont">
                                          <%=vo.getContent()%>
                                        </p>
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
</body>

</html>
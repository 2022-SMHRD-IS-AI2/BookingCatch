<%@page import="com.smhrd.model.MemberVO"%>
<%@page import="com.smhrd.model.TrainerVO"%>
<%@page import="com.smhrd.model.tipBoardDAO"%>
<%@page import="com.smhrd.model.tipBoardVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- <link rel="stylesheet" href="asset/css/TrainerSearch.css"> -->
    <link rel="stylesheet" href="asset/css/tipBoard.css">
     <link rel="stylesheet" href="asset/css/NewMain.css">
     <link rel="preconnect" href="https://fonts.googleapis.com"><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin><link href="https://fonts.googleapis.com/css2?family=Amatic+SC&family=Gloria+Hallelujah&family=Gowun+Batang&family=Kanit&family=Lilita+One&family=Lobster&family=Michroma&family=Montserrat+Alternates&family=Moon+Dance&family=Play&family=Rubik+80s+Fade&family=Shadows+Into+Light&display=swap" rel="stylesheet">
    <!-- <script src="https://kit.fontawesome.com/f4f342f148.js" crossorigin="anonymous"></script> -->
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
    
    <div class="wrap">
        <a href="#"><button class="fixed-menu">
            <i class="fa-solid fa-arrow-up"></i><!--  Top -->
        </button></a>
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
            <a href="tipBoardMain.jsp">Tip게시판</a><a href="#">공감게시판</a>
        </div>
            <!-- 헤더부분 양심없이 길다 진짜  -->
        
        <!-- header부분  -->
        
        <%List<tipBoardVO> vo = new tipBoardDAO().showTipBoard(); %>
        
        <div class="board">
            <h3 class="board_title">TIP 게시판</h3>
            <table>
                <tr class="tbtr">
                    <th>번호</th>
                    <th>제목</th>
                    <th>작성자</th>
                    <th>작성일</th>
                    <th>좋아요 수</th>
                </tr>
                
                <%for (int i = 0 ; i<vo.size(); i++) {
                	tipBoardVO model = vo.get(i);
                %>
                <tr>
                    <td><%=model.getNum()%></td>
                    <td class="subject"><a href="tipBoardDetail.jsp?num=<%=model.getNum()%>"><%=model.getTitle()%></a></td>
                    <td><%=model.getWriter()%></td>
                    <td><%=model.getDate()%></td>
                    <td><%=model.getLikes()%></td>
                </tr>
                <%} %>
                </table>
                
                <%if(loginTrainer !=null){%>
                	<table>
                <td class="board_writer" colspan="5">
                <a href="/BookingCatch/tipBoardWrite.jsp">
                    <button id="writer"> 
                        작성하기
                    </button>
                </a>
                </td>  
            	</table>
                <% }%> 
                	
                
                
                   
         </div>
    
    <div class="paging">
        <ul>
            <li class="active">prev</li>
            <li class="active">1</li>
            <li class="active">2</li>
            <li class="active">3</li>
            <li class="active">4</li>
            <li class="active">5</li>
            <li class="active">next</li>
        </ul>
    </div>
</body>

</html>
<%@page import="com.smhrd.model.TrainerVO"%>
<%@page import="com.smhrd.model.MemberVO"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./asset/css/NewMain.css">
    <script src="https://kit.fontawesome.com/f4f342f148.js" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Amatic+SC&family=Gloria+Hallelujah&family=Gowun+Batang&family=Kanit&family=Lilita+One&family=Lobster&family=Michroma&family=Montserrat+Alternates&family=Moon+Dance&family=Play&family=Rubik+80s+Fade&family=Shadows+Into+Light&display=swap" rel="stylesheet">
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    
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

        <header id="header">
            <ul class="want-to-be-fixed">
                <li id="special-li" class="special-li"><a href="Trainers.jsp"><span class="en">Trainer</span><span class="ko">선생님</span></a></li>
                <li><a href="CenterLocation.jsp"><span class="en">Center</span><span class="ko">운동센터</span></a></li>
                <li id="special-li2" class="special-li2"><a href="tipBoardMain.jsp"><span class="en">Community</span><span class="ko">게시판</span></a></li>
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
        
            <a href="Trainers.jsp">MBTI</a><a href="#">수업방식</a>
        </div>
        <div class="menu-hidden2" id="menu-hidden2">
        
            <a href="tipBoardMain.jsp">Tip게시판</a><a href="ssulBoardMain.jsp">공감게시판</a>

        </div>
            <!-- 헤더부분 양심없이 길다 진짜  -->
            
            

        <div class="main-center">
            <!-- <p>운동을 <span>comfort</span>하게</p>
            <p>예약을 <span>smart</span>하게</p> -->

        </div>
        <div class="main-bottom-letter">
            <p class="big-letter">건강하게 나의 몸을 가꿔보아요!</p>
            <div class="sketch-line"></div>
            <p>#오래오래#건강히</p>
        </div>
        <div class="boxes">
            <div class="box1">
                <div class="box-img2">
                    <img src="img/Main사용이미지1.png" alt="">
                    <span>거리순 센터찾기를 통해</span><span>가까운 트레이닝센터를 찾아보아요!</span>
                </div>
                <div class="box-letter">
                    <span class="problem">운동할 곳을 찾을 땐</span>
                    <a href="CenterLocation.jsp"><span class="solution">→센터 찾기</span></a>
                </div>
            </div>
            <div class="box1">
                <div class="box-img1">
                    <img src="img/Main사용이미지3.png" alt="">
                    <span>mbti와 후기를 통해</span><span>나와 잘 맞는 선생님을 찾아요</span>
                </div>
                <div class="box-letter">
                    <span class="problem">운동이 막막할 땐</span>
                    <a href="Trainers.jsp"><span class="solution">→선생님 찾기</span></a>
                </div>
            </div>
            <!-- <div class="space"></div> -->
        
            <div class="box1">
                <div class="box-img3">
                    <img src=img/Main사용이미지2.png alt="">
                    <span>선생님들이 작성한 tip을 통해</span><span>궁금한 점들을 ㄴ채워보아요</span>
                </div>
                <div class="box-letter">
                    <span class="problem">1% 부족할 땐</span>
                    <a href="tipBoardMain.jsp"><span class="solution">→Tip게시판</span></a>
                </div>
            </div>
        </div>
        <div class="foot">
            <span>HelinCatch</span>
            <span>이용약관 개인정보처리방침</span>
            
            <span>
                
                이메일: #
                
                대표 번호: 010-####-####
                
                채팅상담: 카카오톡 채널 BookingCatch
                
                Copyright ⓒ부킹캐치  ｜ Design & Hosting by BookingCatch
            </span>

        </div>

    </div>



    <script src="asset/js/NewMain.js"></script>



</body>
</html>
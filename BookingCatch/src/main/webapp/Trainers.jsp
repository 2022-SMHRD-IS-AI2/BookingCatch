
<%@page import="com.smhrd.model.TrainerVO"%>
<%@page import="com.smhrd.model.MemberVO"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
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
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="./asset/css/Trainers.css">
<link rel="stylesheet" href="asset/css/Join.css">
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script src="https://kit.fontawesome.com/f4f342f148.js" crossorigin="anonymous"></script>

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
<<<<<<< HEAD
        <a href="#"><button class="fixed-menu">
            <i class="fa-solid fa-arrow-up"></i><!--  Top -->
        </button></a>
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

     <header>
            
            <ul class="want-to-be-fixed">
                <li><a href="TrainerInfo.jsp"><span class="en">Trainer</span><span class="ko">������</span></a></li>
                <li><a href="#"><span class="en">Center</span><span class="ko">�����</span></a></li>
                <li><a href="tipBoardMain.jsp"><span class="en">Community</span><span class="ko">�Խ���</span></a></li>
                <li><a href=""><span class="en">AboutUs</span><span class="ko">�츮��</span></a></li>
            </ul>

            <a href="NewMain.jsp"><h1>HelinCare</h1></a> 
            
             <div class="ul-forSize">

				<ul>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
				</ul>

					
                <!-- <ul>  ȸ�������Ҷ� �α����Ҷ� ���� �׳ɳ�����
                    <li><a href="Login.jsp">�α���</a></li>
                    <li><a href="JoinWho">ȸ������</a></li>
                    <li><a href="#">������</a></li>
                    <li><i class="fa-regular fa-heart"></i></li>
                </ul> -->
            </div>

        </header>
        <!-- ������� header -->
    
<!-- >>>>>>> branch 'master1' of https://github.com/2022-SMHRD-IS-AI2/BookingCatch.git -->
        <div class="all-container">
            <div class="title-pt">
                <h1>PT</h1>
                
                <button><a href="TrainerInfo.jsp">글쓰기</a></button>
            </div>
            <div class="trainers-container" id="trainers-pt">
<!--                 <div class="trainers"> -->
<!--                     <img src="/img/yoga-32126.svg" alt=""> -->
<!--                     <div class="trainers-name"> -->
<!--                         <span>김다희 트레이너</span> -->
<!--                         <div class="name-and-stars"> -->
<!--                             <span>"열심히 하겠습니다."</span> -->
<!--                             <span>★5.0(5)</span> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                 </div> -->
            </div>
            <div class="view-more">
                <button>더보기</button>
            </div>
        </div>
        <div class="all-container">
            <div class="title-pt">
                <h1>필라테스</h1>
                <button>글쓰기</button>
            </div>
            <div class="trainers-container" id="trainers-pilates">
<!--                 <div class="trainers"> -->
<!--                     <img src="/img/yoga-32126.svg" alt=""> -->
<!--                     <div class="trainers-name"> -->
<!--                         <span>김다희 트레이너</span> -->
<!--                         <div class="name-and-stars"> -->
<!--                             <span>"열심히 하겠습니다."</span> -->
<!--                             <span>★5.0(5)</span> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                 </div> -->
            </div>
            <div class="view-more">
                <button>더보기</button>
            </div>
        </div>
        <div class="all-container">
            <div class="title-pt">
                <h1>요가</h1>
                <button>글쓰기</button>
            </div>
            <div class="trainers-container" id="trainers-yoga">
<!--                 <div class="trainers"> -->
<!--                     <img src="/img/yoga-32126.svg" alt=""> -->
<!--                     <div class="trainers-name"> -->
<!--                         <span>김다희 트레이너</span> -->
<!--                         <div class="name-and-stars"> -->
<!--                             <span>"열심히 하겠습니다."</span> -->
<!--                             <span>★5.0(5)</span> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                 </div> -->
            </div>
            <div class="view-more">
                <button>더보기</button>
            </div>
        </div>
    </div>
</body>
<script src="/asset/js/Trainers.js"></script>
<script src="/asset/js/NewMain.js"></script>
</html>
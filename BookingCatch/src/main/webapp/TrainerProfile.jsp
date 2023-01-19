<%@page import="com.smhrd.model.TrainerInfoDAO"%>
<%@page import="com.smhrd.model.TrainerVO"%>
<%@page import="com.smhrd.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="asset/css/TrainerProfile.css">
    <link rel="stylesheet" href="asset/css/NewMain.css">
    
    <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"><!-- <!--  --> -->
    <!-- Popper JS -->
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="asset/css/Login.css">
<link
	href="https://fonts.googleapis.com/css2?family=Amatic+SC&family=Gloria+Hallelujah&family=Gowun+Batang&family=Kanit&family=Lilita+One&family=Lobster&family=Michroma&family=Montserrat+Alternates&family=Moon+Dance&family=Play&family=Rubik+80s+Fade&family=Shadows+Into+Light&display=swap"
	rel="stylesheet">
</head>

<body>

    <div class="wrap">
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
   
   
   String tid = request.getParameter("tid");
   new TrainerInfoDAO().selectTrainerInfo(tid);
   %>
    
    <div class="wrap">
        <a href="#"><button class="fixed-menu">
            <i class="fa-solid fa-arrow-up"></i><!--  Top -->
        </button></a>
        <header id="header">
            
            <ul class="want-to-be-fixed">
                <li><a href="Trainers.jsp"><span class="en">Trainer</span><span class="ko">선생님</span></a></li>
                <li><a href="CenterLocation.jsp"><span class="en">Center</span><span class="ko">운동센터</span></a></li>
                <li id="special-li" class="special-li"><a href="tipBoardMain.jsp"><span class="en">Community</span>
                <span class="ko" >게시판</span></a></li>
                <li><a href="#"><span class="en">AboutUs</span>
                <span class="ko">우리는</span></a></li>
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
        <!-- 여기까지 header -->
             <div class="Trainer-info">
            <div class="position-fixed">
                <img src="/img/김계란.png" alt="">
                <div class="trainer-name">
                    <span>김다희 <span class="left_tr_name">트레이너</span></span>
                </div>
                <div class="reservation-btn" id="pop">
                    
                    <a href="#" data-toggle="modal" data-target="#myModal" id="reservationView">
                        <button>예약하기</button>
                    </a>
                    <a href="#"><button>
                        채팅
                    </button></a>
                </div>
            </div>
            <div class="short-info">
                <!-- <div class="title">
                    <span>요약소개</span>
                </div> -->
                <div class="content">
                    <span class="one-sentence-info">
                           "인공지능반을 책임질 김다희 트레이너 입니다."
                    </span>
                    <div class="infos">
                        <span class="bold-letter">
                            전문분야
                        </span>
                        <br>
                        <span class="none-bold">
                            자세교정 , 재활전문
                        </span>
                    </div>
                    <div class="infos">
                        <ul class="lic_con">
                            <li><span class="bold-letter">자격증명</span></li>
                            <li><span class="none-bold-li trophy_img">인공지능 서비스개발자 과정 대상</span></li>
                            <li><span class="none-bold-li trophy_img">동명동 쁘띠대회 대상</span></li>
                        </ul>
                    </div>
                    <div class="infos pt20">
                        <span class="bold-letter">
                            예약가격
                        </span>
                        <br>
                        <span class="none-bold">
                            회당 10만원 / 20회 기준
                        </span>
                    </div>
                    <div class="infos pt10">
                        <li><span class="bold-letter">성격유형(INFP)</span></li>
                    </div>
                    <div class="graph">
                        <li><img src="./img/MBTI.gif" class="MBTI-img"></li>
                    </div>
                </div>
                <div class="buttons">
                    <button>예약하기</button>
                    <button>채팅</button>
                    <button style="font-size: 17px;">♡</button>
                </div>
            </div>
            <div class="mini-menu">
                <!-- <li class="mini-menu-li"><a href="#introduce">자기소개</li>
                <li class="mini-menu-li"><a href="#certicate">자격증명</a></li>
                <li class="mini-menu-li"><a href="#center">센터</a></li>
                <li class="mini-menu-li"><a href="#schedule">스케줄</a></li>
                <li class="mini-menu-li"><a href="#program">프로그램</a></li>
                <li class="mini-menu-li"><a href="#postscript">후기</a></li>
                <li class="mini-menu-li"><a href="#price">레슨가격</a></li>
                <li class="mini-menu-li"><a href="#zoom">zoom, 방문수업 여부</a></li>
                <li class="mini-menu-li"><a href="#notice">공지사항</a></li> -->
                <a href="#introduce"><li class="mini-menu-li">자기소개</li></a>
                <a href="#certicate"><li class="mini-menu-li">자격증명</li></a>
                <a href="#center"><li class="mini-menu-li">센터</li></a>
                <a href="#schedule"><li class="mini-menu-li">스케줄</li></a>
                <a href="#program"><li class="mini-menu-li">프로그램</li></a>
                <a href="#postscript"><li class="mini-menu-li">후기</li></a>
                <a href="#price"><li class="mini-menu-li">레슨가격</li></a>
                <a href="#zoom"><li class="mini-menu-li">수업방법 여부</li></a>
                <a href="#notice"><li class="mini-menu-li">공지사항</li></a>

            </div>
            <div class="short-info give-top-space">
                <div class="title" id="introduce">
                    <span>자기소개</span>
                </div>
                <div class="content">
                    <div class="infos"></div>
                        <!-- <span class="bold-letter">
                            전문분야
                        </span>
                        <span class="none-bold">
                            자세교정,재활전문
                        </span>
                    </div>
                    <div class="infos">
                        <span class="bold-letter">
                            자격증명
                        </span>
                        <span class="none-bold">
                            2개
                        </span>
                    </div>
                    <div class="infos">
                        <span class="bold-letter">
                            대표가격
                        </span>
                        <span class="none-bold">
                            회당 10만원/20회 기준
                        </span>
                    </div>
                    <div class="infos">
                        <span class="bold-letter">
                            성격유형
                        </span>
                        <span class="none-bold">
                            INTP 여기다가 그래프 넣을 거라서 공간확보가능
                        </span> -->
                </div>
            </div>
            <div class="short-info give-top-space">
                <div class="title" id="certificate">
                    <span>자격증명</span>
                </div>
                <div class="content">
                    <div class="infos">
                        <ul class="lic_con">
                            <li><span class="bold-letter">자격증명</span></li>
                            <li><span class="none-bold-li trophy_img">인공지능 서비스개발자 과정 대상</span></li>
                            <li><span class="none-bold-li trophy_img">동명동 쁘띠대회 대상</span></li>
                            <li><span class="none-bold-li trophy_img">탈주닌자 제1회 대상</span></li>
                            <li><span class="none-bold-li trophy_img">광주 이쁜 몸 대상</span></li>
                            <li><span class="none-bold-li trophy_img">북구 디자인 </span></li>
                            <li><span class="none-bold-li trophy_img">광주 이쁜 몸 대상</span></li>
                        </ul>
                        <!-- <span class="bold-letter">
                            전문분야
                        </span>
                        <span class="none-bold">
                            자세교정,재활전문
                        </span>
                    </div>
                    <div class="infos">
                        <span class="bold-letter">
                            자격증명
                        </span>
                        <span class="none-bold">
                            2개
                        </span>
                    </div>
                    <div class="infos">
                        <span class="bold-letter">
                            대표가격
                        </span>
                        <span class="none-bold">
                            회당 10만원/20회 기준
                        </span>
                    </div>
                    <div class="infos">
                        <span class="bold-letter">
                            성격유형
                        </span>
                        <span class="none-bold">
                            INTP 여기다가 그래프 넣을 거라서 공간확보가능
                        </span> -->
                    </div>
                </div>
            </div>
            <div class="short-info give-top-space">
                <div class="title" id="center">
                    <span>센터</span>
                </div>
                <div class="content" id="Centerimg">
                    <div class="Center_img">
                       <div class="Center_img_1">
                        <img src="/img/센터내부1.png" id="img1">
                        <img src="/img/센터내부2.png" id="img2">
                        <img src="/img/센터내부3.png" id="img3">
                        <img src="/img/센터내부4.png" id="img4">
                    </div>
                    </div>
                </div>

            </div>
            <div class="short-info give-top-space">
                <div class="title" id="schedule">
                    <span>스케줄</span>
                </div>
                <div class="content">
                    <div class="infos">
                        <!-- <span class="bold-letter">
                            전문분야
                        </span>
                        <span class="none-bold">
                            자세교정,재활전문
                        </span>
                    </div>
                    <div class="infos">
                        <span class="bold-letter">
                            자격증명
                        </span>
                        <span class="none-bold">
                            2개
                        </span>
                    </div>
                    <div class="infos">
                        <span class="bold-letter">
                            대표가격
                        </span>
                        <span class="none-bold">
                            회당 10만원/20회 기준
                        </span>
                    </div>
                    <div class="infos">
                        <span class="bold-letter">
                            성격유형
                        </span>
                        <span class="none-bold">
                            INTP 여기다가 그래프 넣을 거라서 공간확보가능
                        </span> -->
                    </div>
                </div>
            </div>
            <div class="short-info give-top-space">
                <div class="title" id="program">
                    <span>프로그램</span>
                </div>
                <div class="content">
                     
                </div>
            </div>
            <div class="short-info give-top-space">
                <div class="title" id="postscript">
                    <span>후기</span>
                </div>
                <div class="content">
                    
                </div>
            </div>
            <div class="short-info give-top-space">
                <div class="title" id="price">
                    <span>레슨가격</span>
                </div>
                <div class="content">
                    
                    
                </div>
            </div>
            <div class="short-info give-top-space">
                <div class="title" id="notice">
                    <span>공지사항</span>
                </div>
                <div class="content">
                
                </div>
            </div>
        </div>

        <div class="calendar-modal-view">
            <div class="calendar-modal-inner">
                <button class="close-modal" style="border: none; float: right;">X</button>
                
                </div>
            </div>
        </div>
    </div>

  <div class="modal" id="myModal">
    <div class="modal-dialog modal-xl">
      <div class="modal-content">
        <div class="modal-header" style="padding: 10px 16px;">
          <h4 class="modal-title" >예약하기</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <div class="modal-body">
            <div class="calendar-modal-grid">
                <div class="calendar">
                    <div class="header">
                    <div class="year-month"></div>
                    <div class="nav">
                        <button class="nav-btn go-prev" onclick="prevMonth()">&lt;</button>
                        <button class="nav-btn go-today" onclick="goToday()">Today</button>
                        <button class="nav-btn go-next" onclick="nextMonth()">&gt;</button>
                    </div>
                    </div>
                    <div class="main">
                    <div class="days">
                        <div class="day">일</div>
                        <div class="day">월</div>
                        <div class="day">화</div>
                        <div class="day">수</div>
                        <div class="day">목</div>
                        <div class="day">금</div>
                        <div class="day">토</div>
                    </div>
                    <div class="dates"></div>
                    </div>
                </div>
                <div class="calendar-modal-choose">
                    <div class="form-group">
                        <label for="usr">날짜 :</label>
                        <input type="text" class="form-control" id="datepickInput" disabled>
                    </div>
                    <div class="form-group">
                        <label for="usr">시간</label>
                        <select class="form-control" id="timeTableList">
                        	<option value="0">시간 선택</option>
                        </select>
                    </div>
                    <div>
                        <label for="usrwant">요구사항 :</label>
                        <textarea  class="form-control" id="datewantInput"></textarea>
                    </div>
                    <div>
                       
                    </div>

                    <button class="btn btn-primary" id="doReservation">예약</button>
                </div>
        </div>
      </div>
    </div>
  </div>
    
<script src="asset/js/TrainerProfile.js"></script>
<script src="asset/js/NewMain.js"></script>
</body>

</html>
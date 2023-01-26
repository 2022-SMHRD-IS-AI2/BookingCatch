<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.smhrd.model.TrainerInfoVO"%>
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
	 <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
    <!-- iamport.payment.js -->
    <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
</head>

<body>

    <div class="wrap">
    <%
   
   MemberVO loginMember=null;
   TrainerVO loginTrainer=null; 
	
   String tid = request.getParameter("tid");
   System.out.print(tid);
   
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
                <img src="img/김계란.png" alt="">
                <div class="trainer-name">
                    <span>빡빡이 <span class="left_tr_name">트레이너</span></span>
                </div>
                <div class="reservation-btn" id="pop">
                    
                    <a href="#" data-toggle="modal" data-target="#myModal" id="reservationView">
                        <button>예약하기</button>
                    </a>
                    <a href="http://127.0.0.1:5500/index.html" target="_blank"><button>
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
                           "항상 최선을 다하는..빡빡이 트레이너 입니다."
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
                            <li><span class="none-bold-li trophy_img">2019 WBC 머슬모델 4위</span></li>
                            <li><span class="none-bold-li trophy_img">2020 MUSA 평택 피지크 4위</span></li>
                            <li><span class="none-bold-li trophy_img">2021 PCA 리저널 안양 피지크 TOP 10</span></li>
                        </ul>
                    </div>
                    <div class="infos pt20">
                        <span class="bold-letter">
                            예약가격
                        </span>
                        <br>
                        <span class="none-bold">
                            회당 10만원
                        </span>
                    </div>
                    <div class="infos pt10">
                        <li><span class="bold-letter">성격유형(ENTJ)</span></li>
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
                   <span>
                   안녕하세요!
                   <br>
                   언제나 회원님들과 소통하면서 운동목적에 바른 길을 잡아주고 있는 김빡빡 트레이너 입니다!
                   <br>
                   많은 운동방법들이 나온 지금 무슨 운동이 나에게 맞고 우선순위 일지,운동의 방향은 어떻게 잡을지
                   고민되지 않으신가요?
                   <br>
                   운동의 첫 단추를 잘못 끼우면 악순환으로 반복되면서 실패한다고 생각합니다.
                   <br>
                   막연하게 운동하기 보다는 확실한 목표 설정과 그 목표에 도달 할 수 있도록 최선을 다해 도와드리겠습니다.
                   </span>
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
                            <li><span class="none-bold-li trophy_img"></span></li>
                            <li><span class="none-bold-li trophy_img">2019 WBC 머슬모델 4위</span></li>
                            <li><span class="none-bold-li trophy_img">2020 MUSA 평택 피지크 4위</span></li>
                            <li><span class="none-bold-li trophy_img">2021 PCA 리저널 안양 피지크 TOP 10</span></li>
                            <li><span class="none-bold-li trophy_img">2021 FCA 광주 피지크 TOP 5 </span></li>
                            <li><span class="none-bold-li trophy_img">2022 BEST 서울 피지크 TOP 10</span></li>
                            <li><span class="none-bold-li trophy_img">2022 파리 글로벌피지크 입상</span></li>
                            <li><span class="none-bold-li trophy_img">2022 SSA 부산피지크 TOP 10</span></li>
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
                   <span><h4>운영시간</h4>
                   <br>
                   평일 : 07:00 ~ 23:00
                   <br><br>
                   토요일 : 10:00 ~ 19:00
                   <br><br>
                   휴무일 : 매달 둘째 , 넷째 주 일요일 , 공휴일
                   </span>
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
                     <span><h4>바른채형 다이어트</h4></span>
                        <br>    	
                        <h4>목표설정</h4>
                        <br>
                        <span>                       
                        먼저 회원님의 몸상태를 파악하기 위해서 인바디와 채형을 확일할 수 있는
                        간단한 움직임 테스트로 몸상태를 확인합니다. 현실적인 다어이트와 체형교정을
                        하기 위해서 단기적인 목표와 장기적인 목표로 구분하여 설명드립니다.
                        </span>
                        <br><br>
                        <h4>운동진행</h4>
                        <br>
                        
                        사람마다 체형이 다르기에 필요한 운동도 다릅니다. 회원님께 필요한 우선순위의
                        운동으로 진행됩니다! 두서 없는 운동을 막연하게 트레이닝 하기보다는 회원님께 이
                        운동이 왜 필요한지 확실히 알려드리고 있습니다.
                     </span>
                </div>
            </div>
            <div class="short-info give-top-space">
                <div class="title" id="postscript">
                    <span>후기</span>
                </div>
                <div class="content">
                    <span><h4>김동훈 2022.08.11</h4>
                    
                    처음 헬스장을 방문했을때의 몸무게가 62 였습니다. 덩치가
                    왜소한 것이 컴플렉스였고 어떠한 계기로 컴플렉스를 깨보자라는 마음가짐을
                    가지고 생에 처음 헬스를 접해보았고 피티 20회권을 끊으며 지훈쌤에게 한가지만
                    목표를 한다고 했습니다.딱 1달 동안 20회를 모두 소진하였을때..정말 힘들었지만
                    혼자 헬스를 했다면 이루지 못했을 것이라고 확신하며 지훈쌤에 대한 신뢰는 높아졌고
                    저는 또 피티를 등록 하게 되었네요!!
                    </span>
                </div>
            </div>
            <div class="short-info give-top-space">
                <div class="title" id="price">
                    <span>레슨가격</span>
                </div>
                <div class="content">
                    <span><h4>1:1 PT</h4></span>
                     <br>
                     30회 - 1,800,000원(회당 60,000원)
                     <br>
                     <br>
                     20회 - 1,400,000원(회당 70,000원)
                     <br>
                     <br>
                     10회 - 800,000원(회당 80,000원)
                     <br>
                     <br>
                     1회 -  100,000원(회당 100,000원)
                </div>
            </div>
            <div class="short-info give-top-space">
                <div class="title" id="notice">
                    <span>공지사항</span>
                </div>
                <div class="content">
                    <span>개인 사정으로 인해 휴무일때는 공지사항에 올려놓겠습니다.</span>
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
                    <button onclick="requestPay()">결제하기</button>
                </div>
        </div>
      </div>
    </div>
  </div>
    
<script src="asset/js/TrainerProfile.js"></script>
<script src="asset/js/NewMain.js"></script>
<script type="text/javascript">
</script>
</body>

</html>
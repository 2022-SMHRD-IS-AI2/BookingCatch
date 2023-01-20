 <%@page import="com.smhrd.model.TrainerVO"%>
<%@page import="com.smhrd.model.TrainerDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./asset/css/TrainerProfile.css">
    <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <!-- Popper JS -->
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>

<body>
    <form action="TrainerInfoDAO">
    <div class="wrap">
    <header>
            <% TrainerVO vo = (TrainerVO)session.getAttribute("loginTrainer"); 

            %>
            <ul class="want-to-be-fixed">
                <li><a href="#"><span class="en">Trainer</span><span class="ko">선생님</span></a></li>
                <li><a href="#"><span class="en">Center</span><span class="ko">운동센터</span></a></li>
                <li><a href="#"><span class="en">Community</span><span class="ko">게시판</span></a></li>
                <li><a href="#"><span class="en">AboutUs</span><span class="ko">우리는</span></a></li>
            </ul>

            <a href="NewMain.jsp"><h1>HelinCare</h1></a>
            
             <div class="ul-forSize">

				<ul>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
				</ul>


                <!-- <ul>
                    <li><a href="Login.jsp">로그인</a></li>
                    <li><a href="JoinWho">회원가입</a></li>
                    <li><a href="#">고객센터</a></li>
                    <li><i class="fa-regular fa-heart"></i></li>
                </ul> -->
            </div>

        </header>
        <!-- 여기까지 header -->
        <div class="position-fixed">
            <img src="./img/<%=vo.getImg_path() %>" alt="">
            <div class="trainer-name">
                <span><%=vo.getName() %> <span class="left_tr_name">트레이너</span></span>
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
        <div class="Trainer-info">
            <div class="short-info">
                <!-- <div class="title">
                    <span>요약소개</span>
                </div> -->
                <div class="content">
                   
                    <span class="one-sentence-info"> <textarea name="" id="" cols="73" rows="2"placeholder='"인공지능반을 책임질 ooo 트레이너 입니다."'></textarea> </span>
                    <div class="infos">
                        <span class="bold-letter">
                            전문분야
                        </span>

            
                        <br>
                        <span class="none-bold">
                           <textarea name="" id="" cols="98" rows="2" placeholder="자세교정,재활전문"></textarea>
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
                            <textarea name="" id="" cols="98" rows="2" placeholder="회당 10만원 / 20회 기준"></textarea>
                    
                        </span>
                    </div>
                    <div class="infos pt10">
                       <span class="bold-letter">성격유형(<%=vo.getMbti() %>)</span>
                    </div>
                    <div class="graph">
                        <img src="./img/MBTI.gif" class="MBTI-img">
                    </div>
                </div>
                <div class="buttons">
                    <button>예약하기</button>
                    <button>채팅</button>
                    <button style="font-size: 17px;">♡</button>
                </div>
            </div>
            <div class="mini-menu">
                <a href="#notice">공지사항</a></li>
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
                    <div class="infos">
                       <textarea name="introduce" id="" cols="90" rows="5" placeholder="나는 <%=vo.getName() %>이란다!"></textarea>
                       
                    </div>
                </div>
            </div>
            <div class="short-info give-top-space">
                <div class="title" id="schedule">
                    <span>자격증명</span>
                </div>
                <div class="content">
                    
                    <textarea name="certificate" id="" cols="90" rows="1" placeholder="나뭇잎 마을 배 탈주닌자 선발대회 1등"></textarea>
                    <div class="short-info give-top-space">
                    <div>
                   
                </div>
                <div>
                    <div>
                            
                    </div>
                </div>
            </div>
                </div>
            </div>
            <div class="short-info give-top-space">
                <div class="title" id="center">
                    <span>센터</span>
                </div>
                <div class="content">
                    <span class="one-sentence-info">
                        <textarea name="center" id="" cols="78" rows="1" placeholder=<%=vo.getCenter() %>></textarea>
                    </span>
                    <textarea name="" id="" cols="78" rows="1" placeholder="여기는 지도가 들어가면 좋을거같아요"></textarea>
               
                    
                    <div class="short-info give-top-space">
                    
                <div>
                   
                </div>
                <div>
                    <div>
                            
                    </div>
                </div>
            </div>
                </div>
            </div>
            <div class="short-info give-top-space">
                <div class="title" id="schedule">
                    <span>스케줄</span>
                </div>
                <div class="content">
                    <textarea name="schedule" id="" cols="90" rows="1" placeholder="월~금 9:00~21:00"></textarea>
                    <div class="short-info give-top-space">
                    <div>
                   
                </div>
                <div>
                    <div>
                            
                    </div>
                </div>
            </div>
                </div>
            </div>
            <div class="short-info give-top-space">
                <div class="title" id="schedule">
                    <span>프로그램</span>
                </div>
                <div class="content">
                    <textarea name="program" id="" cols="90" rows="1" placeholder="오리걸음하고 지리산 등반/n 거꾸로돌기 5000회"></textarea>
                    <div class="short-info give-top-space">
                    <div>
                   
                </div>
                <div>
                    <div>
                            
                    </div>
                </div>
            </div>
                </div>
            </div>
            
            <div class="short-info give-top-space">
                <div class="title" id="schedule">
                    <span>레슨가격</span>
                </div>
                <div class="content">
                    <textarea name="price" id="" cols="90" rows="1" placeholder="50000마넌"></textarea>
                    <div class="short-info give-top-space">
                    <div>
                   
                </div>
                <div>
                    <div>
                            
                    </div>
                </div>
            </div>
                </div>
            </div>
            <div class="short-info give-top-space">
                <div class="title" id="schedule">
                    <span>수업방법여부</span>
                </div>
                <div class="content">
                    <textarea name="method" id="" cols="90" rows="1" placeholder="줌으로도가능, 집방문도가능, 헬스장에서도 가능"></textarea>
                    <div class="short-info give-top-space">
                    <div>
                   
                </div>
                <div>
                    <div>
                            
                    </div>
                </div>
            </div>
                </div>
            </div>
            <div class="short-info give-top-space">
                <div class="title" id="schedule">
                    <span>공지사항</span>
                </div>
                <div class="content">
                    <textarea name="method" id="" cols="90" rows="1" placeholder="공지사항 특별히 없습니다."></textarea>
                    <div class="short-info give-top-space">
                    <div>
                   
                </div>
                <div>
                    <div>
                            
                    </div>
                </div>
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
          <h4 class="modal-title">예약하기</h4>
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
                    <button class="btn btn-primary" id="doReservation">예약</button>
                </div>
        </div>
      </div>
    </div>
  </div>
  <button type="submit">작성하기완료</button>
</form>
</body>
<script src="./asset/js/TrainerProfile.js"></script>
</html>
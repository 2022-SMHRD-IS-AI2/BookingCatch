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
    <link rel="stylesheet" href="./asset/css/TrainerInfo.css">
   
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
        <a href="#"><button class="fixed-menu">
            <i class="fa-solid fa-arrow-up"></i><!--  Top -->
        </button></a>
        <header id="header">
            
            <ul class="want-to-be-fixed">
                <li><a href="TrainerInfo.jsp"><span class="en">Trainer</span><span class="ko">선생님</span></a></li>
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
            
        <div class="Container">
            <div class="TrainerKategorie">필라테스</div>
            <div class="Trainer">
                <ul>
                    <li class="Trainer001">
                        <a href="#">  
                            <figure>
                                <img src="./img/Trainer001.jpg" /> 
                            </figure>
                        </a>
                        <a href="#" class="Trainer_Name">영심이</a>
                    <br>
                   <p>#동명동 #필라테스 #INFJ</p>
                </li>
                
                 
                    <li class="Trainer002">
                        <a href="#">  
                            <figure>
                                <img src="./img/Trainer002.jpg" /> 
                            </figure>
                        </a>
                        <a href="#" class="Trainer_Name">하니</a>
                        <br> 
                        <p>#충장로 #필라테스 #ENFP</p>
                    </li>
                    <li class="Trainer003">
                        <a href="#">  
                            <figure>
                                <img src="./img/Trainer003.jpg" /> 
                            </figure>
                        </a>
                        <a href="#" class="Trainer_Name">네티</a>
                        <br>
                        <p>#동명동 #필라테스 #INFP</p> 
                    </li>
                    <li class="Trainer004">
                        <a href="#">  
                            <figure>
                                <img src="./img/Trainer004.jpg" /> 
                            </figure>
                        </a>
                        <a href="#" class="Trainer_Name">체리</a>
                       <br>
                       <p>#광주역 #필라테스 #ENPJ</p>
                    </li>
                </ul>
            </div>
     
            <div class="TrainerKategorie">헬스</div>
            <div class="Trainer">
                <ul>
                    <li class="Trainer001">`
                        <a href="#">  
                            <figure>
                                <img src="./img/Trainer001.jpg" /> 
                            </figure>
                        </a>
                        <a href="#">오경진</a>
                        <br>
                        # 동명동 # 필라테스 # 1:1수업
                    
                    </li>
                    <li class="Trainer002">
                        <a href="#">  
                            <figure>
                                <img src="./img/Trainer002.jpg" /> 
                            </figure>
                        </a>
                        <a href="#">윤효창</a>
                        <br>
                        <p>#동명동 #필라테스 #</p> 
                    </li> 
                    <li class="Trainer003">
                        <a href="#">  
                            <figure>
                                <img src="./img/Trainer003.jpg" /> 
                            </figure>
                        </a>
                        <a href="#">모델001</a>
                    
                    </li>
                    <li class="Trainer004">
                        <a href="#">  
                            <figure>
                                <img src="./img/Trainer004.jpg" /> 
                            </figure>
                        </a>
                        <a href="#">모델001</a>
                    
                    </li>
                </ul>
            </div>
            <div class="TrainerKategorie">요가</div>
            <div class="Trainer">
                <ul>
                    <li class="Trainer001">`
                        <a href="#">  
                            <figure>
                                <img src="./img/Trainer001.jpg" /> 
                            </figure>
                        </a>
                        <a href="#">오경진</a>
                        <br>
                        # 동명동 # 필라테스 # 1:1수업
                    
                    </li>
                    <li class="Trainer002">
                        <a href="#">  
                            <figure>
                                <img src="./img/Trainer002.jpg" /> 
                            </figure>
                        </a>
                        <a href="#">모델001</a>
                        <br> 
                    </li>
                    <h4># 동명동 # 필라테스 # 화상수업</h4> 
                    <li class="Trainer003">
                        <a href="#">  
                            <figure>
                                <img src="./img/Trainer003.jpg" /> 
                            </figure>
                        </a>
                        <a href="#">모델001</a>
                    
                    </li>
                    <li class="Trainer004">
                        <a href="#">  
                            <figure>
                                <img src="./img/Trainer004.jpg" /> 
                            </figure>
                        </a>
                        <a href="#">모델001</a>
                    
                    </li>
                    <li class="Trainer005">
                        <a href="#">  
                            <figure>
                                <img src="./img/Trainer001.jpg" /> 
                            </figure>
                        </a>
                        <a href="#">모델001</a>
                    </li>
                </ul>
            </div>
        </div>
    </header>
<script src="./js/TrainerSearch.js"></script>
</body>
</html>
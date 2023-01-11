<%@page import="com.smhrd.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="asset/css/Main.css">
    <script src="https://kit.fontawesome.com/f4f342f148.js" crossorigin="anonymous"></script>
    
</head>
<body>
	<%
	MemberVO loginMember = (MemberVO) session.getAttribute("loginMember");
	//System.out.print(loginMember.getId());
	%>
	
    <div class="wrap">
        <header>
            <div class="header1">
                
                <img src="" alt="HelinCatch" class="logo">
                <div class="header-center">
                    
                    <input type="text" class="header-search" placeholder="#나의#트레이너찾기">
                    <button class="search-btn">
                        <i class="fa-solid fa-magnifying-glass"></i>
                </button>
            </div>
            
        </ul>
        <div class="for-space"></div>
        <ul class="header1-ul">
            <li class="menu-letter"><a href="Login.jsp">로그인</a></li>
            <li class="menu-letter"><a href="Join.jsp">회원가입</a></li>
            <li class="menu-letter"><a href="#">고객센터</a></li>
            <li class="menu-letter" id="addEvent"><i class="fa-regular fa-heart"></i>
                <div id="hidden-list">
                    <p>My Trainer</p>
                    <i class="fa-solid fa-xmark" id="close"></i>
                    
                    <hr>
                    <hr>
                    <div class="my-trainer-all" id="my-trainer-list">
                        <i class="fa-solid fa-person-running"></i>
                        <div class="my-trainer">
                            <img src="https://mblogthumb-phinf.pstatic.net/MjAyMDA5MDdfMjY4/MDAxNTk5NDg2MzQyNTIz.6QN5Xu9v8IoKidY5gZTUaVjr_qjdE9cNfz25FonnPTgg.Wmc7WTaNgBXcq3gytCd3yLHZPBVJl_gN7-r_TQICdYsg.JPEG.nadakiyou/20200907_215857.jpg?type=w2" alt="트레이너">
                            <div class="trainer-letter">

                                <p>김남준 트레이너</p>
                                <p>MBTI : INFP</p>
                            </div>
                            <i class="fa-solid fa-heart" id="heart$"></i>
                        </div>
                        
                        
                    </div>
                    <div class="my-trainer-all">
                        <i class="fa-solid fa-person-running"></i>
                        <div class="my-trainer">
                            <img src="https://mblogthumb-phinf.pstatic.net/MjAyMDA5MDdfMjY4/MDAxNTk5NDg2MzQyNTIz.6QN5Xu9v8IoKidY5gZTUaVjr_qjdE9cNfz25FonnPTgg.Wmc7WTaNgBXcq3gytCd3yLHZPBVJl_gN7-r_TQICdYsg.JPEG.nadakiyou/20200907_215857.jpg?type=w2" alt="트레이너">
                            <div class="trainer-letter">

                                <p>김남준 트레이너</p>
                                <p>MBTI : INFP</p>
                            </div>
                            <i class="fa-solid fa-heart" id="heart$"></i>
                        </div>
                        
                        
                    </div>

                  
                    
                    

                </div>
            </li>
        </ul>
    </div>
    <div class="header2">
        <ul class="header2-ul">
            <li><a href="#">트레이너</a>
                <ul class="hidden">
                    <li>지역별</li>
                    <li>운동별</li>

                </ul>
            
            </li>
            <li><a href="#">센터</a></li>
            <li>
                <a href="#">커뮤니티</a>
                <ul class="hidden">
                    
                    <a href="tipBoardMain.jsp"><li>Tip게시판</li></a>
                    <li>공감게시판</li>
                </ul>
            </li>
            <li><a href="#">우리는?</a></li>
            </ul>
            
        </div>
    </header>

        
    
    
    
    
    <img src="./img/Main.jpg" alt="Sorry" class="Main-img">
    
    
    </div>
    <script src="asset/js/Main.js"></script>
</body>
</html>
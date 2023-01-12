<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./css/TrainerSearch.css">
    <script src="https://kit.fontawesome.com/f4f342f148.js" crossorigin="anonymous"></script>
</head>
<body>
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
                    <i class="fa-solid fa-xmark" id="close" >하트</i>                  
                    </div>
            </li>
        </ul>
    </div>
    <div class="header2">
        <ul class="header2-ul">
            <li><a href="#">트레이너</a>
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
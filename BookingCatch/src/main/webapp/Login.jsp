<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./asset/css/Login.css">
    <script src="https://kit.fontawesome.com/f4f342f148.js" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com"><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin><link href="https://fonts.googleapis.com/css2?family=Amatic+SC&family=Gloria+Hallelujah&family=Gowun+Batang&family=Kanit&family=Lilita+One&family=Lobster&family=Michroma&family=Montserrat+Alternates&family=Moon+Dance&family=Play&family=Rubik+80s+Fade&family=Shadows+Into+Light&display=swap" rel="stylesheet">
</head>
<body>


    <div class="wrap">
        <header>
            
            <ul class="want-to-be-fixed">
                <li><a href="#"><span class="en">Trainer</span><span class="ko">선생님</span></a></li>
                <li><a href="#"><span class="en">Center</span><span class="ko">운동센터</span></a></li>
                <li><a href="#"><span class="en">Community</span><span class="ko">게시판</span></a></li>
                <li><a href="#"><span class="en">AboutUs</span><span class="ko">우리는</span></a></li>
            </ul>

            <a href="#"><h1>HelinCare</h1></a> 
            
            <div class="ul-forSize">

                <ul>
                    <li><a href="#">로그인</a></li>
                    <li><a href="#">회원가입</a></li>
                    <li><a href="#">고객센터</a></li>
                    <li><i class="fa-regular fa-heart"></i></li>
                </ul>
            </div>

        </header>
        
        <!-- 여기까지 header부분 -->
    
    
    
        <div class="login">
            <h1>Login</h1>
            <form action="#" class="login-form">
                <input type="text" name="id" placeholder="아이디">
                <input type="password" name="pw" placeholder="비밀번호">
                <div class="remain-login">
                    <input type="checkbox">
                    <span>로그인 유지</span>
                </div>
            </form>
            <button><span class="block">LOGIN</span><span class="none">로그인</span></button>
            <div class="little-letter">
                <a href=""><span>아이디 찾기</span></a>
                <span>|</span>
                <a href=""><span>비번 찾기</span></a>
            </div>
        </div>


    </div>






</body>
</html>
    
<!-- <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./asset/css/Login.css">
</head>
 <body>
    

    <div class="wrap">
        <div class="login">
        <div> <a href="Main.jsp"><img src="./img/Logo.jpg"></a></div>
            <p class="login-letter">로그인</p>
            <div class="login-who">
                <button id="user">회원</button>
                <button id="trainer">트레이너</button>
            </div>
            <form action="LoginCon" method="post">
            <div class="login-input">
                <p>ID</p>
                <input type="text" name="id" placeholder="아이디">
            </div>
            <div class="login-input">
                <p>PW</p>
                <input type="password" name="pw" placeholder="비밀번호">
            </div>
            <div class="login-checkbox">
                <input type="checkbox"><span>아이디 저장</span>
            </div>
            <div class="login-button">
                <input type="submit" value="로그인">
            </div>
            </form>
            <div class="login-find">
                <span><a href="#">아이디 찾기</a></span>
                <span>|</span>
                <span><a href="#">비밀번호 재설정</a></span>
            </div>
            
            
            
        </div>
    </div>



<script src="Login.js"></script>

</body>
</html>  -->
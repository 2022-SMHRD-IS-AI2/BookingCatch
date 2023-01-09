<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    



    <div class="wrap">
        <div class="login">
            <p class="login-letter">로그인</p>
            <div class="login-who">
                <button id="user">회원</button>
                <button id="trainer">트레이너</button>
            </div>
            <div class="login-input">
                <p>ID</p>
                <input type="text" placeholder="아이디">
            </div>
            <div class="login-input">
                <p>PW</p>
                <input type="password" placeholder="비밀번호">
            </div>
            <div class="login-checkbox">
                <input type="checkbox"><span>아이디 저장</span>
            </div>
            <div class="login-button">
                <input type="submit" value="로그인">
            </div>
            <div class="login-find">
                <span><a href="#">아이디 찾기</a></span>
                <span>|</span>
                <span><a href="#">비밀번호 재설정</a></span>
            </div>
            
            
            
        </div>
    </div>



<script src="login.js"></script>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="Join.css">
</head>
<body>
    
    <div class="wrap">
        <form action="JoinCon" method="post">
            <div class="id">
                <div class="id-box">
                    <p>아이디</p>
                    <input type="text" name="id" placeholder="ID">
                <p>사용가능한 아이디</p>
                    <button>중복확인</button>
                </div>
            </div>
            <div class="pw-box">
                <p>비밀번호</p>
                <input type="password" name="pw" placeholder="PW">
            </div>
            <!-- <div class="pw-box">
                <p>비밀번호 확인</p>
                <input type="password" name="rpw" placeholder="PW">
            </div> -->
            <div class="pw-box">
                <p>이름</p>
                <input type="text" name="name" placeholder="NAME">
            </div>
            <div class="pw-box">
                <p>생일</p>
                <input type="text" name="birth" placeholder="생년월일 6자리">
            </div>
            <div class="pw-box">
                <p>MBTI</p>
                <input type="text" name="mbti" placeholder="MBTI">
            </div>
            <div class="pw-box">
            	<p>주소</p>
            	<input type="text" name="address" placeholder="주소를 입력해 주세요">
            </div>
            
            <div class="pw-box">
                <p>전화번호</p>
                <input type="text" name="phone-number" placeholder="-없이 써주세요">
            </div>
            <div class="gender-box">
                <p>성별</p>
                <div class="gender">
                    남<input type="radio" name="gender" value="M">
                    여<input type="radio" name="gender" value="W">
                </div>
            </div>
            <input type="checkbox">
            <input type="checkbox">
            <input type="checkbox">
            <input type="submit" value="회원가입">
            
        </form>
            


    </div>





<script src="Join.js"></script>
</body>
</html>
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
        <form action="#">

            
            <div class="id">
                <div class="id-box">
                    <p>아이디</p>
                    <input type="text" name="id" placeholder="ID">
                    <button>중복확인</button>
                </div>
                <p>사용가능한 아이디</p>
            </div>
            <div class="pw-box">
                <p>비밀번호</p>
                <input type="password" placeholder="PW">
            </div>
            <div class="pw-box">
                <p>비밀번호 확인</p>
                <input type="password" placeholder="PW">
            </div>
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
                <input type="text" name="MBTI" placeholder="MTBI">
            </div>
            <div class="gender-box">
                <p>성별</p>
                <div class="gender">

                    남<input type="radio" name="gender" value="M">
                    여<input type="radio" name="gender" value="W">
                </div>
            </div>
            <div class="pw-box">
                <p>전화번호</p>
                <input type="text" name="phone-number" placeholder="-없이 써주세요">
            </div>
            <input type="checkbox">
            <input type="checkbox">
            <input type="checkbox">
            <input type="submit">
            
        </form>
            


    </div>






</body>
</html>
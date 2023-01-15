<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일반 회원 가입</title>
<link rel="stylesheet" href="asset/css/Join.css">
</head>
<body>

	<div class="wrap">
        <!-- header시작 -->
        <header>
            
            <ul class="want-to-be-fixed">
                <li><a href="#"><span class="en">Trainer</span><span class="ko">선생님</span></a></li>
                <li><a href="#"><span class="en">Center</span><span class="ko">운동센터</span></a></li>
                <li><a href="#"><span class="en">Community</span><span class="ko">게시판</span></a></li>
                <li><a href="#"><span class="en">AboutUs</span><span class="ko">우리는</span></a></li>
            </ul>

            <a href="Main.jsp"><h1>HelinCare</h1></a> 
            
            <div class="ul-forSize">

                <ul>
                    <li><a href="Login.jsp">로그인</a></li>
                    <li><a href="JoinWho.jsp">회원가입</a></li>
                    <li><a href="#">고객센터</a></li>
                    <li><i class="fa-regular fa-heart"></i></li>
                </ul>
            </div>

        </header>
        <!-- 여기까지 header -->
        
        
		<div class="join">
            <h1>Join</h1>
            <form action="JoinCon" class="join-form">
                
                <!-- input들어옴 -->
                <div class="input-join">
                    <input type="text" name="id" placeholder="아이디" id="inputE" onkeypress="checkE()">
                    <div class="inside-letter">
                        <span id="resultCheck"></span>
                    </div>
                
                    <input type="password" name="pw" placeholder="비밀번호" id="pw">
                    <input type="password" placeholder="비밀번호 확인" id="checkPw" onkeyup="checkPassword()">
                    
                    <div class="inside-letter">
                        <span id="resultPw"></span>
                    </div>
                
                    <input type="text" name="name" placeholder="이름">
                    <input type="datetime" name="birth" placeholder="생년월일 8자리">
                    <!-- <input type="text" placeholder="MBTI"> -->
                    <input list="mbtis" name="mbti" placeholder="MBTI" class="input-list">

                        <datalist id="mbtis">
                            <option value="ESTP">
                            <option value="ESFP">
                            <option value="ENFP">
                            <option value="ENTP">
                            <option value="ESTJ">
                            <option value="ESFJ">
                            <option value="ENFJ">
                            <option value="ENTJ">
                            <option value="ISTJ">
                            <option value="ISFJ">
                            <option value="INFJ">
                            <option value="INTJ">
                            <option value="ISTP">
                            <option value="ISFP">
                            <option value="INFP">
                            <option value="INTP">
                        </datalist>
                    <input type="text" name="address" placeholder="주소">
                	<input type="text" name="phone" placeholder="핸드폰 번호 입력">
                    <div class="input-radio">
                        <input type="radio" name="gender" value="M" id="Man">
                        <label for="Man">남</label>
                        <input type="radio" name="gender" value="W" id="Woman">
                        <label for="Woman">여</label>
                        <!-- <span>히</span> -->
                    </div>
                    <button class="submit"><span class="en">Join</span><span class="ko">회원가입</span></button>

                </div>
            </form>
            
        </div>

        
    </div>
    	<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
	<script>
		function checkE() {
			var inputE = $('#inputE').val()
			// console.log(inputE)

			$.ajax({
				// 어디로 요청할 것인지??
				url : 'EmailCheckCon',
				// 요청데이터(json형태, {key, value})
				data : {
					'inputE' : inputE
				},
				// 요청방식
				type : 'get',
				// 요청-응답
				success : function(data) {
					if (data == 'true') {
						$('#resultCheck').text('사용할 수 없는 아이디')
					} else {
						$('#resultCheck').text('사용할 수 있는 아이디')
					}
				},
				error : function() {
					alert("통신실패")
				}
			})
		}
		
		function checkPassword(){
			var pw = $('#pw').val()
			var checkPw = $('#checkPw').val()
			if(checkPw==pw){
				$('#resultPw').text('비밀번호가 일치합니다')
			}else{
				$('#resultPw').text('비밀번호가 다릅니다')
			}
		}
	</script>
</body>
</html>
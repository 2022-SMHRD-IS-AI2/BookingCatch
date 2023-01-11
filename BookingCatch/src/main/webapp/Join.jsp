<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="asset/css/Join.css">
</head>
<body>

	<div class="wrap">

		<form action="JoinCon" method="post">
			<div class="id">
				<div class="id-box">
					<p>아이디</p>
					<input type="text" name="id" id="inputE" placeholder="ID">
					<!-- <input value="id중복체크" onclick="checkE()" type="button"> -->
					<button onkeypress="checkE()" type="button">중복확인</button>
					<div>
						<span id="resultCheck"></span>
					</div>

				</div>
			</div>
			<div class="pw-box">
				<p>비밀번호</p>
				<input type="password" name="pw" placeholder="PW">
			</div>
			<div class="pw-box">
				<p>비밀번호 확인</p>
				<input type="password" name="rpw" placeholder="PW">
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
				<input type="text" name="mbti" placeholder="MBTI">
			</div>
			<div class="pw-box">
				<p>주소</p>
				<input type="text" name="address" placeholder="주소를 입력해 주세요">
			</div>

			<div class="pw-box">
				<p>전화번호</p>
				<input type="text" name="phone" placeholder="-없이 써주세요">
			</div>
			<div class="gender-box">
				<p>성별</p>
				<div class="gender">
					남<input type="radio" name="gender" value="m"> 여<input
						type="radio" name="gender" value="w">
				</div>
			</div>
			<input type="checkbox"> <input type="checkbox"> <input
				type="checkbox"> <input type="submit" value="회원가입">
		</form>
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
	</script>
</body>
</html>
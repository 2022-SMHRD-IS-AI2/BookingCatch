<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="JoinCon">
ID : <input type="text" name="id"> <br>
PW : <input type="text" name="pw"> <br>
NAME : <input type="text" name="name"> <br>
BIRTH : <input type="text" name="birth"> <br>
MBTI : <input type="text" name="mbti"> <br>
<!-- 실제로 mbti, 성별은 select(option)사용할 예정, birth는 date 사용할 예정 -->
ADDRESS : <input type="text" name="address"> <br>
PHONE : <input type="text" name="phone"> <br>
GENDER : <input type="text" name="gender"> <br>
<input type="submit" value="회원가입">


</form>
</body>
</html>
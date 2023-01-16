<%@page import="com.smhrd.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일반회원 개인정보 수정</title>
</head>
<body>
	<%
		MemberVO loginMember = (MemberVO)session.getAttribute("loginMember");
	%>

	<div>
		<ul>
			<li><h1>회원정보수정</h1></li>
			<form action="UpdateInfoCon" method="post">
				<li>접속한 ID : <%=loginMember.getId()%></li>
				<li><input name="pw" type="password" placeholder="PW를 입력하세요"></li>
				<li>이름 : <%=loginMember.getName() %></li>
				<li>생년월일 : <%=loginMember.getBirth() %></li>
				<li><input name="mbti" type="text" placeholder="MBTI를 입력하세요" 
					value="<%=loginMember.getMbti()%>"></li>
				<li><input name="address" type="text" placeholder="집주소를 입력하세요"
					value="<%=loginMember.getAddress()%>"></li>	
				<li>가입일자 : <%=loginMember.getB_date() %></li>
				<li><input name="phone" type="text"
					value="<%=loginMember.getPhone()%>" placeholder="핸드폰번호를 입력하세요"></li>
				<li><input type="submit" value="회원정보수정"></li>
				<li>성별 : <%=loginMember.getGender()%></li>
			</form>
		</ul>
		<a href="DeleteCon">회원탈퇴</a>
		<a href="NewMain.jsp">홈으로 가기</a>
	</div>

</body>
</html>
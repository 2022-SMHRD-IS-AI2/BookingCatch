<%@page import="com.smhrd.model.TrainerVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>트레이너 개인정보 수정</title>
</head>
<body>
	<%
		TrainerVO loginTrainer = (TrainerVO)session.getAttribute("loginTrainer");
		
	// 아직 Con생성안함
	%>

	<div>
		<ul>
			<li><h1>회원정보수정</h1></li>
			<form action="UpdateTInfoCon" method="post">
				<li>접속한 ID : <%=loginTrainer.getId()%></li>
				<li><input name="pw" type="password" placeholder="PW를 입력하세요"></li>
				<li>이름 : <%=loginTrainer.getName() %></li>
				<li>생년월일 : <%=loginTrainer.getBirth() %></li>
				<li><input name="mbti" type="text" placeholder="MBTI를 입력하세요" 
					value="<%=loginTrainer.getMbti()%>"></li>
				<li><input name="center" type="text" placeholder="센터위치를 입력하세요"
					value="<%=loginTrainer.getCenter()%>"></li>
				<li><input name="ttype" type="text" placeholder="전공운동"> </li>		
				<li>가입일자 : <%=loginTrainer.getB_date() %></li>
				<li><input name="phone" type="text"
					value="<%=loginTrainer.getPhone()%>" placeholder="핸드폰번호를 입력하세요"></li>
				<li>성별 : <%=loginTrainer.getGender()%></li>
				<li><input type="submit" value="회원정보수정"></li>
			</form>
		</ul>
		<a href="NewMain.jsp">홈으로 가기</a>
	</div>

</body>
</html>
<%@page import="com.smhrd.model.TrainerVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="asset/css/TrainerSearch.css">
<link rel="stylesheet" href="asset/css/tipBoard.css">
<script src="https://kit.fontawesome.com/f4f342f148.js" crossorigin="anonymous"></script>
</head>
<body>
	<%
		TrainerVO loginMember = (TrainerVO)session.getAttribute("loginMember"); 
	%>

<div id="wrap">
        <header>
            <div class="header1">
                <a href="Main.jsp"><img src="" alt="HelinCatch" class="logo"></a>
                <div class="header-center">
                    <input type="text" class="header-search" placeholder="#나의#트레이너찾기">
                    <button class="search-btn">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                </div>
                <div class="for-space"></div>
                <ul class="header1-ul">
                    <li class="menu-letter"><a href="Login.jsp">로그인</a></li>
                    <li class="menu-letter"><a href="Join.jsp">회원가입</a></li>
                    <li class="menu-letter"><a href="#">고객센터</a></li>
                    <li class="menu-letter" id="addEvent">
                        <i class="fa-regular fa-heart"></i>
                        <div id="hidden-list">
                            <p>My Trainer</p>
                            <i class="fa-solid fa-xmark" id="close" >하트</i>                  
                        </div>
                    </li>
                </ul>
            </div>
            <div class="header2">
                <ul class="header2-ul">
                    <li>
                        <a href="#">트레이너</a>
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
        </header>
    </div>
	<div id="board">
		<form action="/BookingCatch/writeTipBoardCon" method="post" enctype="multipart/form-data">
			<table id="list">
				<tr>
					<td>제목</td>
					<td><input type="text" class="header-search" name="title" style="width: 90%;"></td>
				</tr>
				<tr>
					<td>작성자</td>
					<td><input value="<%=loginMember.getName() %>트레이너" type="text" class="header-search" name="writer" style="width: 90%;"></td>
				</tr>
				<tr>
					<td colspan="2">내용</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="file" name="filename" style="float: right;"> 
						<textarea class="header-search" name="content" rows="10" rows="10" style="resize: none; width: 90%;"></textarea></td>
				</tr>
				<tr>
					<td colspan="2">
						<button type="reset">취소</button>
						<button type="submit">작성하기</button>
					</td>
					</tr>
			</table>
		</form>



	</div>

</body>
</html>
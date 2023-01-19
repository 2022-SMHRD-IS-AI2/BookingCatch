<%@page import="com.smhrd.model.MemberVO"%>
<%@page import="com.smhrd.model.TrainerVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공감게시판 글쓰기</title>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="asset/css/TrainerSearch.css">
<link rel="stylesheet" href="asset/css/tipBoard.css">
</head><link rel="stylesheet" href="./asset/css/Join.css">
<link rel="preconnect" href="https://fonts.googleapis.com"><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin><link href="https://fonts.googleapis.com/css2?family=Amatic+SC&family=Gloria+Hallelujah&family=Gowun+Batang&family=Kanit&family=Lilita+One&family=Lobster&family=Michroma&family=Montserrat+Alternates&family=Moon+Dance&family=Play&family=Rubik+80s+Fade&family=Shadows+Into+Light&display=swap" rel="stylesheet">
 
<body>
	<%
		MemberVO loginMember = (MemberVO)session.getAttribute("loginMember");
		TrainerVO loginTrainer = (TrainerVO)session.getAttribute("loginTrainer"); 
				%>
		

<div id="wrap">
        <header>
           
            
            
            <ul class="want-to-be-fixed">
                <li><a href="#"><span class="en">Trainer</span><span class="ko">선생님</span></a></li>
                <li><a href="#"><span class="en">Center</span><span class="ko">운동센터</span></a></li>
                <li><a href="#"><span class="en">Community</span><span class="ko">게시판</span></a></li>
                <li><a href="#"><span class="en">AboutUs</span><span class="ko">우리는</span></a></li>
            </ul>

            <a href="NewMain.jsp"><h1>HelinCare</h1></a> 
            
            <div class="ul-forSize">

				<ul>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
				</ul>
            </div>
        </header>
        <!-- 여기까지 header -->
    </div>
	<div id="board">
		<form action="writeSsulBoardCon" method="post" enctype="multipart/form-data">
			<table id="list">
				<tr>
					<td>제목</td>
					<td><input type="text" class="header-search" name="title" style="width: 90%;"></td>
				</tr>
				<tr> 
					<td>작성자</td>
					<td><input type="text" class="header-search" name="writer" style="width: 90%;"></td>
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
						<button type="reset">다시쓰기</button>
						<button type="submit">작성하기</button>
					</td>
					</tr>
			</table>
		</form>



	</div>

</body>
</html>
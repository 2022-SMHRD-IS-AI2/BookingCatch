<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.smhrd.model.tipBoardVO"%>
<%@page import="com.smhrd.model.tipBoardDAO"%>
<!DOCTYPE html
   PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport"
        content="width=device-width, initial-scale=1.0, maximum-scale=3.0, minimum-scale=1.0, user-scalable=yes, target-density-dpi=medium-dpi" />
    <title>센터 찾기</title>
    <link rel="stylesheet" href="asset/css/board.css" />
    <link rel="stylesheet" href="asset/css/TrainerSearch.css">
    <link rel="stylesheet" href="asset/css/Trainerprofile.css">
    <link rel="stylesheet" href="asset/css/Boarder.css">
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=794e114ba8dfd9f6256cddb7ffcdf9f1"></script>

   <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
   <script src="../js/function.js"></script>


</head>

<body>
	<%
		tipBoardVO vo = new tipBoardDAO().detailTipBoard(4); 
	%>
   <div id="wrap">
        <header>
            <div class="header1">
                <img src="" alt="HelinCatch" class="logo">
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
                    <a href="tipBoardMain.jsp">커뮤니티</a>
                    <ul class="hidden">
                        <li><a href="tipBoardMain.jsp">Tip게시판</a></li>
                        <li><a href="">공감게시판</a></li>
                    </ul>
                </li>
                <li><a href="#">우리는?</a></li>
                </ul>
            </div>
        </header>
<div id="map" style="width:1280px;height:750px;" style="text-align: center;"></div>
</body>
<script>

var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
var options = { //지도를 생성할 때 필요한 기본 옵션
	center: new kakao.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
	level: 3 //지도의 레벨(확대, 축소 정도)
};

var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
</script>
</html>
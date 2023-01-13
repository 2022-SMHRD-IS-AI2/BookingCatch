<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="asset/css/TrainerSearch.css">
    <link rel="stylesheet" href="asset/css/tipBoard.css">
    <script src="https://kit.fontawesome.com/f4f342f148.js" crossorigin="anonymous"></script>
</head>
<body>
    <div class="wrap">
        <header>
            <div class="header1">
                
                <img src="" alt="HelinCatch" class="logo">
                <div class="header-center">
                    
                    <input type="text" class="header-search" placeholder="#나의#트레이너찾기">
                    <button class="search-btn">
                        <i class="fa-solid fa-magnifying-glass"></i>
                </button>
            </div>
            
        </ul>
        <div class="for-space"></div>
        <ul class="header1-ul">
            <li class="menu-letter"><a href="Login.jsp">로그인</a></li>
            <li class="menu-letter"><a href="Join.jsp">회원가입</a></li>
            <li class="menu-letter"><a href="#">고객센터</a></li>
            <li class="menu-letter" id="addEvent"><i class="fa-regular fa-heart"></i>
                <div id="hidden-list">
                    <p>My Trainer</p>
                    <i class="fa-solid fa-xmark" id="close" >하트</i>                  
                    </div>
            </li>
        </ul>
    </div>
    <div class="header2">
        <ul class="header2-ul">
            <li><a href="#">트레이너</a>
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
        <div class="board">
            <h3 class="board_title">TIP 게시판</h3>
            <table>
                <tr class="tbtr">
                    <th>번호</th>
                    <th>제목</th>
                    <th>작성자</th>
                    <th>작성일</th>
                    <th>조회수</th>
                </tr>
                <tr>
                    <td>1</td>
                    <td class="subject"><a href="board.jsp">공지사항 안내(세부내용 포함)</a></td>
                    <td>dusikiki</td>
                    <td>2022-10-26</td>
                    <td>0</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td class="subject">헬스 입문한 헬린이들에 지침서!!</td>
                    <td>kjcode</td>
                    <td>2022-10-26</td>
                    <td>0</td>
                </tr>
                <tr>
                    <td>3</td>
                    <td class="subject">나도 김계란이 될 수 있다!! (헬린이 기초운동법)</td>
                    <td>kjcode</td>
                    <td>2022-10-26</td>
                    <td>0</td>
                </tr>
                <tr>
                    <td>4</td>
                    <td class="subject">탈</td>
                    <td>kjcode</td>
                    <td>2022-10-26</td>
                    <td>0</td>
                </tr>
                <tr>
                    <td>5</td>
                    <td class="subject">주</td>
                    <td>kjcode</td>
                    <td>2022-10-26</td>
                    <td>0</td>
                </tr>
                <tr>
                    <td>6</td>
                    <td class="subject">하</td>
                    <td>kjcode</td>
                    <td>2022-10-26</td>
                    <td>0</td>
                </tr>
                <tr>
                    <td>7</td>
                    <td class="subject">고</td>
                    <td>kjcode</td>
                    <td>2022-10-26</td>
                    <td>0</td>
                </tr>
                <tr>
                    <td>8</td>
                    <td class="subject">싶</td>
                    <td>kjcode</td>
                    <td>2022-10-26</td>
                    <td>0</td>
                </tr>
                <tr>
                    <td>9</td>
                    <td class="subject">다</td>
                    <td>kjcode</td>
                    <td>2022-10-26</td>
                    <td>0</td>
                </tr>
                <tr>
                    <td>10</td>
                    <td class="subject">!</td>
                    <td>kjcode</td>
                    <td>2022-10-26</td>
                    <td>0</td>
                </tr>
                <tr>
                    <td>11</td>
                    <td class="subject">!</td>
                    <td>kjcode</td>
                    <td>2022-10-26</td>
                    <td>0</td>
                </tr>
                
                <td class="board_writer" colspan="5">
                <a href="#">
                    <button id="writer"> 
                        작성하기
                    </button>
                </a>
                </td>  
                   
            </table>
         </div>
    
    <div class="paging">
        <ul>
            <li class="active">prev</li>
            <li class="active">1</li>
            <li class="active">2</li>
            <li class="active">3</li>
            <li class="active">4</li>
            <li class="active">5</li>
            <li class="active">next</li>
        </ul>
    </div>
</body>
</html>
<%-- 
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.smhrd.model.tipBoardVO"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.model.tipBoardDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Tip Board Main</title>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>

	<%List<tipBoardVO> vo = new tipBoardDAO().showTipBoard();%>
	<div id="#">
		<table id="#">
			<tr>
				<td>번호</td>
				<td>제목</td>
				<td>작성자</td>
				<td>시간</td>
			</tr>
		
			 <%for (int i = 0; i < vo.size(); i++) { %>
            	<tr>
            	<!-- 게시글 내용이 들어갈 부분 -->
                  <td><%=i+1 %></td>
                  <td><a href="tipBoardDetail.jsp?num=<%=vo.get(i).getNum()%>"><%=vo.get(i).getTitle() %></a></td>
                  <td><%=vo.get(i).getWriter() %></td>
                  <td><%=vo.get(i).getDate().toString()%></td>
               </tr>
            	<%} %>
			
		</table>
		<a href="Main.jsp"><button id="writer">홈으로가기</button></a> <a
			href="tipBoardWrite.jsp"><button id="writer">작성하러가기</button> </a>

	</div>

</body>
</html> --%>
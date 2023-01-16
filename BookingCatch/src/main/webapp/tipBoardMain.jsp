<%@page import="com.smhrd.model.MemberVO"%>
<%@page import="com.smhrd.model.TrainerVO"%>
<%@page import="com.smhrd.model.tipBoardDAO"%>
<%@page import="com.smhrd.model.tipBoardVO"%>
<%@page import="java.util.List"%>
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
     <link rel="stylesheet" href="asset/css/Main.css">
    <script src="https://kit.fontawesome.com/f4f342f148.js" crossorigin="anonymous"></script>
</head>
<body>
   <%
   
   MemberVO loginMember=null;
   TrainerVO loginTrainer=null; 
   
   if(session.getAttribute("loginMember")==null&&session.getAttribute("loginTrainer")==null){
      System.out.print("첫 메인");
   }else if(session.getAttribute("loginMember")!=null){
      loginMember = (MemberVO) session.getAttribute("loginMember");
   }else{
      loginTrainer = (TrainerVO)session.getAttribute("loginTrainer");
   }
   %>
   
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
            
            <%
            if (loginMember == null && loginTrainer ==null){ 
            %> <div class="for-space" id="menu">
      <ul class="header1-ul">
         <li class="menu-letter"><a href="Login.jsp">로그인</a></li>
         <li class="menu-letter"><a href="JoinWho.jsp">회원가입</a></li>
      <li class="menu-letter"><a href="#">고객센터</a></li>
      </ul>
      </div>  
            
            <%
            }else{
            %><%
            if(loginTrainer!=null){%>
            <div class="for-space" id="menu">
             <ul class="header1-ul">
             <li class="menu-letter"><%=loginTrainer.getId() %>님 </li>
            <li class="menu-letter"><a href="UpdateTInfo.jsp">개인정보수정</a></li>
            <li class="menu-letter"><a href="#">예약확인</a> </li>
            <li class="menu-letter"><a href="LogOutCon">로그아웃</a></li></ul>
            </div>
            
             <%
            } else if(loginMember.getId().equals("admin")){ 
               
            %>   
            
            <div class="for-space" id="menu">
            <ul class="header1-ul">
            <li class="menu-letter"><a href="#">전체회원정보</a></li>
            <li class="menu-letter"><a href="UpdateInfo.jsp">개인정보수정</a> </li>
            <li class="menu-letter"><a href="LogOutCon">로그아웃</a></li></ul>
            </div> 
               
             <%
            }
            else if(loginMember!=null){
               System.out.print(loginMember.getId());
            %><div class="for-space" id="menu">
             <ul class="header1-ul">
             <li class="menu-letter"><%=loginMember.getId() %>님 </li>
            <li class="menu-letter"><a href="UpdateInfo.jsp">개인정보수정</a></li>
            <li class="menu-letter"><a href="#">예약확인</a> </li>
            <li class="menu-letter"><a href="LogOutCon">로그아웃</a></li></ul>
            </div>
            
            <%}}%>
        
        <!-- header부분  -->
        
        <%List<tipBoardVO> vo = new tipBoardDAO().showTipBoard(); %>
        
        <div class="board">
            <h3 class="board_title">TIP 게시판</h3>
            <table>
                <tr class="tbtr">
                    <th>번호</th>
                    <th>제목</th>
                    <th>작성자</th>
                    <th>작성일</th>
                    <th>좋아요 수</th>
                </tr>
                
                <%for (int i = 0 ; i<vo.size(); i++) {
                	tipBoardVO model = vo.get(i);
                %>
                <tr>
                    <td><%=model.getNum()%></td>
                    <td class="subject"><a href="tipBoardDetail.jsp?num=<%=model.getNum()%>"><%=model.getTitle()%></a></td>
                    <td><%=model.getWriter()%></td>
                    <td><%=model.getDate()%></td>
                    <td><%=model.getLikes()%></td>
                    <%-- <td class="subject"><a href="board.jsp?num=<%=vo.get(i).getNum()%>"><%=vo.get(i).getTitle()%></a></td>
                    <td><%=vo.get(i).getWriter() %></td>
                    <td><%=vo.get(i).getDate().toString() %></td>
                    <td><%=vo.get(i).getLikes() %></td> --%>
                </tr>
                <%} %>
                </table>
                
                <table>
                <td class="board_writer" colspan="5">
                <a href="/BookingCatch/tipBoardWrite.jsp">
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
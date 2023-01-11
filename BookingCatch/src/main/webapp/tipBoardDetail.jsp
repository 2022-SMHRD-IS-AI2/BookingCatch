

<%@page import="com.smhrd.model.tipBoardVO"%>
<%@page import="com.smhrd.model.tipBoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>

<%
	int num = Integer.parseInt(request.getParameter("num"));
	tipBoardVO vo = new tipBoardDAO().detailTipBoard(num); 
%>

	<div id="board">
		<table id = "list">
               <tr>
                  <td>제목</td>
                  <td><%=vo.getTitle()%></td>
               </tr>
               <tr>
                  <td>작성자</td>
                  <td><%=vo.getWriter() %></td>
               </tr>
               <tr>
                  <td>다운로드</td>
                  <td><a href="./myFile/<%=vo.getFilename()%>" download>다운로드</a></td>
                  <td></td>
               </tr>
               <tr>
                  <td colspan="2">내용</td>
               </tr>
               <tr>
                  <td colspan="2">
                  <h3><%=vo.getContent() %></h3>
                  <img src="./myFile/<%=vo.getFilename()%>">
                  </td>
               </tr>
               <tr>
                  <td colspan="2"><a href="tipBoardMain.jsp"><button>뒤로가기</button></a></td>
               </tr>
            </table>


	</div>

</body>
</html>
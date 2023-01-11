
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
</html>
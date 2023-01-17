<%@page import="java.util.List"%>
<%@page import="com.smhrd.model.TrainerDAO"%>
<%@page import="com.smhrd.model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>

<%
 MemberDAO dao = new MemberDAO();
 List<MemberDAO> list= dao.selectAllMember();
   
 TrainerDAO daot = new TrainerDAO();
 List<TrainerDAO> listt=daot.selectAllTrainer();   
%>

<div></div>
    <nav>
        <table>
            <caption><h2>회원 관리페이지</h2></caption>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr> 
    
                <%for(MemberVO m:list){ %>
                 <tr>
                    <td><%=m.getId()%></td>
                    <td><%=m.getId()%></td>
                    <td><%=m.getId()%></td>
                    <td><%=m.getId()%></td>
                    <td><%=m.getId()%></td>
                    <td><a href="DelectCon?id=<%=m.getId()%>">삭제</a></td>
                </tr>
        <%}%>   
        </table>
</nav>
    <nav>
        <table>
            <caption><h2>트레이너 관리페이지</h2></caption>
                <tr>관리자전체회원조회
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr> 
    
                <%for(TrainerVO t:list){ %>
                 <tr>
                    <td><%=t.getId()%></td>
                    <td><%=t.getId()%></td>
                    <td><%=t.getId()%></td>
                    <td><%=t.getId()%></td>
                    <td><%=t.getId()%></td>
                    <td><a href="DelectCon?id=<%=m.getId()%>">삭제</a></td>
                </tr>
        <%}%>   
        </table>
    </nav>
<a href="#">되돌아가기</a>

    
</body>
</html>
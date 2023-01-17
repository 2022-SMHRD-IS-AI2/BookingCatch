<%@page import="com.smhrd.model.TrainerVO"%>
<%@page import="com.smhrd.model.MemberVO"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.model.TrainerDAO"%>
<%@page import="com.smhrd.model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html >
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>

<%
 MemberDAO dao = new MemberDAO();
 List<MemberVO> list = dao.selectAllMember();
 
 TrainerDAO daot = new TrainerDAO();
 List<TrainerVO> listT = daot.selectAllTrainer();  
%>

<div></div>
    <nav>
        <table>
            <caption><h2>회원 관리페이지</h2></caption>
                <tr>
                    <td>아이디</td>
                    <td>이름</td>
                    <td>생년월일</td>
                    <td>핸드폰</td>
                    <td>성별</td>
                </tr> 
    
                <%for(MemberVO m: list){ %>
                 <tr>
                    <td><%=m.getId()%></td>
                    <td><%=m.getName()%></td>
                    <td><%=m.getBirth()%></td>
                    <td><%=m.getPhone()%></td>
                    <td><%=m.getGender()%></td>
                    <td><a href="DelectCon?id=<%=m.getId()%>">삭제</a></td>
                </tr>
        <%}%>   
        </table>
</nav>
    <nav>
        <table>
            <caption><h2>트레이너 관리페이지</h2></caption>
                <tr>
                    <td>아이디</td>
                    <td>이름</td>
                    <td>생년월일</td>
                    <td>핸드폰</td>
                    <td>성별</td>
                </tr> 
    
                <%for(TrainerVO t:listT){ %>
                 <tr>
                    <td><%=t.getId()%></td>
                    <td><%=t.getName()%></td>
                    <td><%=t.getBirth()%></td>
                    <td><%=t.getPhone()%></td>
                    <td><%=t.getGender()%></td>
                    <td><a href="DelectCon?id=<%=t.getId()%>">삭제</a></td>
                </tr>
        <%}%>   
        </table>
    </nav>
<a href="#">되돌아가기</a>

    
</body>
</html>
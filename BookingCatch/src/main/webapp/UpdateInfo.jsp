<%@page import="com.smhrd.model.TrainerVO"%>
<%@page import="com.smhrd.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>트레이너 정보수정</title>
<link rel="stylesheet" href="./asset/css/Join.css">
<link rel="preconnect" href="https://fonts.googleapis.com"><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin><link href="https://fonts.googleapis.com/css2?family=Amatic+SC&family=Gloria+Hallelujah&family=Gowun+Batang&family=Kanit&family=Lilita+One&family=Lobster&family=Michroma&family=Montserrat+Alternates&family=Moon+Dance&family=Play&family=Rubik+80s+Fade&family=Shadows+Into+Light&display=swap" rel="stylesheet">
    

<script language="javascript">
// opener관련 오류가 발생하는 경우 아래 주석을 해지하고, 사용자의 도메인정보를 입력합니다. ("팝업API 호출 소스"도 동일하게 적용시켜야 합니다.)
//document.domain = "abc.go.kr";

function goPopup(){
	// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(https://business.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
    var pop = window.open("/BookingCatch/jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
    
	// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(https://business.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
    //var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
}
/** API 서비스 제공항목 확대 (2017.02) **/
function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn
						, detBdNmList, bdNm, bdKdcd, siNm, sggNm, emdNm, liNm, rn, udrtYn, buldMnnm, buldSlno, mtYn, lnbrMnnm, lnbrSlno, emdNo){
	// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
	document.form.roadAddrPart1.value = roadAddrPart1;
	document.form.roadAddrPart2.value = roadAddrPart2;
	/* document.form.addrDetail.value = addrDetail; */
	document.form.zipNo.value = zipNo;
}
</script>

</head>
<body>
     <div class="wrap">
        <!-- header시작 -->
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


                <!-- <ul>
                    <li><a href="Login.jsp">로그인</a></li>
                    <li><a href="JoinWho">회원가입</a></li>
                    <li><a href="#">고객센터</a></li>
                    <li><i class="fa-regular fa-heart"></i></li>
                </ul> -->
            </div>

        </header>
        <!-- 여기까지 header -->


        <%
		MemberVO loginMember = (MemberVO)session.getAttribute("loginMember");
	    %>


        <div class="join">
            <h1>회원정보수정</h1>
            <form action="UpdateInfoCon" method="post" class="join-form" name="form" id="form">
                
                <!-- input들어옴 -->
                <div class="input-join">
                    <input type="text" value="접속중인 ID : <%=loginMember.getId()%>" readonly>
                    <input type="password" name="pw" placeholder="PW를 입력하세요">
                    <input type="text" value="이름 : <%=loginMember.getName() %>" readonly>         
                    <input type="text" value="생년월일 : <%=loginMember.getBirth() %> " readonly>                    
                    <!-- <input type="text" placeholder="MBTI"> -->
                    <input list="mbtis" name="mbti" placeholder="MBTI" class="input-list">

                        <datalist id="mbtis">
                            <option value="ESTP">
                            <option value="ESFP">
                            <option value="ENFP">
                            <option value="ENTP">
                            <option value="ESTJ">
                            <option value="ESFJ">
                            <option value="ENFJ">
                            <option value="ENTJ">
                            <option value="ISTJ">
                            <option value="ISFJ">
                            <option value="INFJ">
                            <option value="INTJ">
                            <option value="ISTP">
                            <option value="ISFP">
                            <option value="INFP">
                            <option value="INTP">
                        </datalist>
                    
                    <input name="address" type="text" placeholder="집주소를 입력하세요"
                        value="<%=loginMember.getAddress()%>">
                    <input type="text" value="가입일자 : <%=loginMember.getB_date()%>" readonly>   
                     
                    <input name="phone" type="text" placeholder="핸드폰번호를 입력하세요"
					    value="<%=loginMember.getPhone()%>"></li>
                    <input type="text" value="성별 : <%=loginMember.getGender()%>">
                    
                    <input type="submit" value="회원정보수정">
                   
                </div>
            </form>
            
        </div>

        
    </div>
    	<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
</body>
</html>
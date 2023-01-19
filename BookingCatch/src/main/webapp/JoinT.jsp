<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>트레이너 회원가입</title>
<link rel="stylesheet" href="asset/css/JoinT.css">

<script language="javascript">
// opener관련 오류가 발생하는 경우 아래 주석을 해지하고, 사용자의 도메인정보를 입력합니다. ("팝업API 호출 소스"도 동일하게 적용시켜야 합니다.)
//document.domain = "abc.go.kr";

function goPopup(){
	// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(https://business.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
    var pop = window.open("jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
    
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
                <li><a href="TrainerInfo.jsp"><span class="en">Trainer</span><span class="ko">선생님</span></a></li>
                <li><a href="#"><span class="en">Center</span><span class="ko">운동센터</span></a></li>
                <li><a href="tipBoardMain.jsp"><span class="en">Community</span><span class="ko">게시판</span></a></li>
                <li><a href=""><span class="en">AboutUs</span><span class="ko">우리는</span></a></li>
            </ul>

            <a href="NewMain.jsp"><h1>HelinCare</h1></a> 
            
             <div class="ul-forSize">

				<ul>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
				</ul>

					
                <!-- <ul>  회원가입할때 로그인할때 위에 그냥날리기
                    <li><a href="Login.jsp">로그인</a></li>
                    <li><a href="JoinWho">회원가입</a></li>
                    <li><a href="#">고객센터</a></li>
                    <li><i class="fa-regular fa-heart"></i></li>
                </ul> -->
            </div>

        </header>
        <!-- 여기까지 header -->

        <div class="join">
            <h1>Join</h1>
            <form action="JoinTCon" class="join-form" name="form" id="form">
                
                <!-- input들어옴 -->
                <div class="input-join">
                    <input type="text" name="id" placeholder="아이디" id="inputE" onkeypress="checkE()">
                    <div class="inside-letter">
                        <span id="resultCheck"></span>
                    </div>
                
                    <input type="password" name="pw" placeholder="비밀번호" id="pw">
                    <input type="password" placeholder="비밀번호 확인" id="checkPw" onkeyup="checkPassword()">
                    
                    <div class="inside-letter">
                        <span id="resultPw"></span>
                    </div>
                
                    <input type="text" name="name" placeholder="이름">
                    <input type="datetime" name="birth" placeholder="생년월일 8자리">
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
                    <!-- <input type="text" name="center" placeholder="센터주소"> -->
                    
					<input name="center" type="text" id="roadAddrPart1"  placeholder="센터주소입력">
					<input type="button"  value="주소검색" onclick="goPopup();">
					
                    <input type="text" name="phone" placeholder="전화번호를 입력">
                    <br>
					대표사진을 등록해주세요
					<span></span>
					 <input name="img_path" type="file">
					<textarea name="intro" rows="10" cols="50" placeholder="간략한 자기소개를 작성해주세요 &#13;&#10; ex) 항상 열정으로 가르치는 OOO입니다"></textarea>                    
                		
                    <input list="ttypes" name="ttype" placeholder="운동" class="input-list">
                		<datalist id="ttypes">
                			<option value="헬스">
                			<option value="필라테스">
                			<option value="요가">
                		</datalist>
                    <div class="input-radio">
                        <input type="radio" name="gender" value="M" id="Man">
                        <label for="Man">남</label>
                        <input type="radio" name="gender" value="W" id="Woman">
                        <label for="Woman">여</label>
                        <!-- <span>히</span> -->
                    </div>
                    <button class="submit"><span class="en">Join</span><span class="ko">회원가입</span></button>

                </div>
            </form>
            
        </div>

        
    </div>
    	<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
	<script>
		function checkE() {
			var inputE = $('#inputE').val()
			// console.log(inputE)

			$.ajax({
				// 어디로 요청할 것인지??
				url : 'EmailCheckCon',
				// 요청데이터(json형태, {key, value})
				data : {
					'inputE' : inputE
				},
				// 요청방식
				type : 'get',
				// 요청-응답
				success : function(data) {
					if (data == 'true') {
						$('#resultCheck').text('사용할 수 없는 아이디')
					} else {
						$('#resultCheck').text('사용할 수 있는 아이디')
					}
				},
				error : function() {
					alert("통신실패")
				}
			})
		}
		
		function checkPassword(){
			var pw = $('#pw').val()
			var checkPw = $('#checkPw').val()
			if(checkPw==pw){
				$('#resultPw').text('비밀번호가 일치합니다')
			}else{
				$('#resultPw').text('비밀번호가 다릅니다')
			}
		}
	</script>
</body>
</html>
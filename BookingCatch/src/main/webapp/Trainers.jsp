<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="./asset/css/Trainers.css">
<link rel="stylesheet" href="asset/css/Join.css">
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script src="https://kit.fontawesome.com/f4f342f148.js" crossorigin="anonymous"></script>

</head>
<body>
    <div class="wrap">
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
    
        <div class="all-container">
            <div class="title-pt">
                <h1>PT</h1>
                
                <button><a href="TrainerInfo.jsp">글쓰기</a></button>
            </div>
            <div class="trainers-container" id="trainers-pt">
<!--                 <div class="trainers"> -->
<!--                     <img src="/img/yoga-32126.svg" alt=""> -->
<!--                     <div class="trainers-name"> -->
<!--                         <span>김다희 트레이너</span> -->
<!--                         <div class="name-and-stars"> -->
<!--                             <span>"열심히 하겠습니다."</span> -->
<!--                             <span>★5.0(5)</span> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                 </div> -->
            </div>
            <div class="view-more">
                <button>더보기</button>
            </div>
        </div>
        <div class="all-container">
            <div class="title-pt">
                <h1>필라테스</h1>
                <button>글쓰기</button>
            </div>
            <div class="trainers-container" id="trainers-pilates">
<!--                 <div class="trainers"> -->
<!--                     <img src="/img/yoga-32126.svg" alt=""> -->
<!--                     <div class="trainers-name"> -->
<!--                         <span>김다희 트레이너</span> -->
<!--                         <div class="name-and-stars"> -->
<!--                             <span>"열심히 하겠습니다."</span> -->
<!--                             <span>★5.0(5)</span> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                 </div> -->
            </div>
            <div class="view-more">
                <button>더보기</button>
            </div>
        </div>
        <div class="all-container">
            <div class="title-pt">
                <h1>요가</h1>
                <button>글쓰기</button>
            </div>
            <div class="trainers-container" id="trainers-yoga">
<!--                 <div class="trainers"> -->
<!--                     <img src="/img/yoga-32126.svg" alt=""> -->
<!--                     <div class="trainers-name"> -->
<!--                         <span>김다희 트레이너</span> -->
<!--                         <div class="name-and-stars"> -->
<!--                             <span>"열심히 하겠습니다."</span> -->
<!--                             <span>★5.0(5)</span> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                 </div> -->
            </div>
            <div class="view-more">
                <button>더보기</button>
            </div>
        </div>
    </div>
</body>
<script src="/asset/js/Trainers.js"></script>
</html>
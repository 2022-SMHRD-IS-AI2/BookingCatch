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
                <li><a href="TrainerInfo.jsp"><span class="en">Trainer</span><span class="ko">������</span></a></li>
                <li><a href="#"><span class="en">Center</span><span class="ko">�����</span></a></li>
                <li><a href="tipBoardMain.jsp"><span class="en">Community</span><span class="ko">�Խ���</span></a></li>
                <li><a href=""><span class="en">AboutUs</span><span class="ko">�츮��</span></a></li>
            </ul>

            <a href="NewMain.jsp"><h1>HelinCare</h1></a> 
            
             <div class="ul-forSize">

				<ul>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
				</ul>

					
                <!-- <ul>  ȸ�������Ҷ� �α����Ҷ� ���� �׳ɳ�����
                    <li><a href="Login.jsp">�α���</a></li>
                    <li><a href="JoinWho">ȸ������</a></li>
                    <li><a href="#">������</a></li>
                    <li><i class="fa-regular fa-heart"></i></li>
                </ul> -->
            </div>

        </header>
        <!-- ������� header -->
    
        <div class="all-container">
            <div class="title-pt">
                <h1>PT</h1>
                
                <button><a href="TrainerInfo.jsp">�۾���</a></button>
            </div>
            <div class="trainers-container" id="trainers-pt">
<!--                 <div class="trainers"> -->
<!--                     <img src="/img/yoga-32126.svg" alt=""> -->
<!--                     <div class="trainers-name"> -->
<!--                         <span>����� Ʈ���̳�</span> -->
<!--                         <div class="name-and-stars"> -->
<!--                             <span>"������ �ϰڽ��ϴ�."</span> -->
<!--                             <span>��5.0(5)</span> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                 </div> -->
            </div>
            <div class="view-more">
                <button>������</button>
            </div>
        </div>
        <div class="all-container">
            <div class="title-pt">
                <h1>�ʶ��׽�</h1>
                <button>�۾���</button>
            </div>
            <div class="trainers-container" id="trainers-pilates">
<!--                 <div class="trainers"> -->
<!--                     <img src="/img/yoga-32126.svg" alt=""> -->
<!--                     <div class="trainers-name"> -->
<!--                         <span>����� Ʈ���̳�</span> -->
<!--                         <div class="name-and-stars"> -->
<!--                             <span>"������ �ϰڽ��ϴ�."</span> -->
<!--                             <span>��5.0(5)</span> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                 </div> -->
            </div>
            <div class="view-more">
                <button>������</button>
            </div>
        </div>
        <div class="all-container">
            <div class="title-pt">
                <h1>�䰡</h1>
                <button>�۾���</button>
            </div>
            <div class="trainers-container" id="trainers-yoga">
<!--                 <div class="trainers"> -->
<!--                     <img src="/img/yoga-32126.svg" alt=""> -->
<!--                     <div class="trainers-name"> -->
<!--                         <span>����� Ʈ���̳�</span> -->
<!--                         <div class="name-and-stars"> -->
<!--                             <span>"������ �ϰڽ��ϴ�."</span> -->
<!--                             <span>��5.0(5)</span> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                 </div> -->
            </div>
            <div class="view-more">
                <button>������</button>
            </div>
        </div>
    </div>
</body>
<script src="/asset/js/Trainers.js"></script>
</html>
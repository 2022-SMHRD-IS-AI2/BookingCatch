    	// TIMETABLE 생성 (09시 ~ 18시, 12~13시는 점심)
	let timeTableArr = [
		{"time": "09:00", "value": "1"}
		, {"time": "10:00", "value": "2"}
		, {"time": "11:00", "value": "3"}
		, {"time": "13:00", "value": "4"}
		, {"time": "14:00", "value": "5"}
		, {"time": "15:00", "value": "6"}
		, {"time": "16:00", "value": "7"}
		, {"time": "17:00", "value": "8"}
	]

    var li = document.getElementsByClassName("mini-menu-li");

    function handleClick(event) {
      console.log(event.target);
      // console.log(this);
      // 콘솔창을 보면 둘다 동일한 값이 나온다

      console.log(event.target.classList);

      if (event.target.classList[1] === "active-black") {
        event.target.classList.remove("active-black");
      } else {
        for (var i = 0; i < li.length; i++) {
          li[i].classList.remove("active-black");
        }

        event.target.classList.add("active-black");
      }
    }

    function init() {
      for (var i = 0; i < li.length; i++) {
        li[i].addEventListener("click", handleClick);
      }
    }

    init();



    // $(window).scroll(function(){
    //     var 높이 = $(window).scrollTop();
    //     console.log(높이);
    // });
   
//     let scrollHeight = Math.max(
//         document.body.scrollHeight, document.documentElement.scrollHeight,
//         document.body.offsetHeight, document.documentElement.offsetHeight,
//         document.body.clientHeight, document.documentElement.clientHeight
//       );
//       console.log(scrollHeight);
//       alert('세로 스크롤에 의해 가려진 위쪽 영역 높이: ' + window.pageYOffset);
// alert('가로 스크롤에 의해 가려진 왼쪽 영역 너비: ' + window.pageXOffset);

const getDisplayed=()=>{
    console.log(window.pageYOffset);
    if(window.pageYOffset>665){
        document.getElementById('pop').classList.add('get-displayed');
    }else{
        document.getElementById('pop').classList.remove('get-displayed');
    }
}
window.addEventListener("scroll",getDisplayed);

const date = new Date();

const renderCalender = () => {
  const viewYear = date.getFullYear();
  const viewMonth = date.getMonth();

  document.querySelector('.year-month').textContent = `${viewYear}년 ${viewMonth + 1}월`;

  const prevLast = new Date(viewYear, viewMonth, 0);
  const thisLast = new Date(viewYear, viewMonth + 1, 0);

  const PLDate = prevLast.getDate();
  const PLDay = prevLast.getDay();

  const TLDate = thisLast.getDate();
  const TLDay = thisLast.getDay();

  const prevDates = [];
  const thisDates = [...Array(TLDate + 1).keys()].slice(1);
  const nextDates = [];

  if (PLDay !== 6) {
    for (let i = 0; i < PLDay + 1; i++) {
      prevDates.unshift(PLDate - i);
    }
  }

  for (let i = 1; i < 7 - TLDay; i++) {
    nextDates.push(i);
  }

  const dates = prevDates.concat(thisDates, nextDates);
  const firstDateIndex = dates.indexOf(1);
  const lastDateIndex = dates.lastIndexOf(TLDate);

  dates.forEach((date, i) => {
    let thisPickCondition;
    if(i < firstDateIndex) {
      thisPickCondition = 'prev-month';
    } else if(i >= lastDateIndex + 1) {
      thisPickCondition = 'next-month';
    } else if(i >= firstDateIndex && i < lastDateIndex + 1) {
      thisPickCondition = 'this';
    }

    let thisDay = date;
    let curMonth = viewMonth + 1;
    let thisYear = viewYear;
    if(thisPickCondition === "next-month") {
      if(curMonth >= 12) {
        thisYear++;
        curMonth = "1";
      } else {
        curMonth++;
      }
    } else if(thisPickCondition === "prev-month") {
      if(curMonth <= 1) {
        thisYear--;
        curMonth = "12";
      } else {
        curMonth--;
      }
    }
    curMonth = curMonth < 10 ? "0" + curMonth : curMonth;
    thisDay = thisDay < 10 ? "0" + thisDay : thisDay;
    const thisDate = thisYear + "-" + curMonth + "-" + thisDay;

    dates[i] = `<div class="date" data-date="${thisDate}"><span class="${thisPickCondition} date-picker">${date}</span></div>`;
  });

  document.querySelector('.dates').innerHTML = dates.join('');

  const today = new Date();
  if (viewMonth === today.getMonth() && viewYear === today.getFullYear()) {
    for (let date of document.querySelectorAll('.this')) {
      if (+date.innerText === today.getDate()) {
        date.classList.add('today');
        break;
      }
    }
  }

  // 이번달을 벗어난 날짜를 선택했을 때 벗어난 연도 및 월이 선택되게끔 해야함
  $('.date').click(function() {
    const thisPickCondition = $(this).children('span').attr("class").split(' ')[0];
    const thisDay = $(this).text() < 10 ? "0" + $(this).text() : $(this).text();
    let thisMonth = date.getMonth() + 1;
    let thisYear = date.getFullYear();
    if(thisPickCondition === "next-month") {
      if(thisMonth >= 12) {
        thisYear++;
        thisMonth = "1";
      } else {
        thisMonth++;
      }
    } else if(thisPickCondition === "prev-month") {
      if(thisMonth <= 1) {
        thisYear--;
        thisMonth = "12";
      } else {
        thisMonth--;
      }
    }
    thisMonth = thisMonth < 10 ? "0" + thisMonth : thisMonth;
    const thisDate = thisYear + "-" + thisMonth + "-" + thisDay;
    $('#datepickInput').val(thisDate);
    
    // 날짜를 클릭할 경우 리스트를 초기화
	initTimeTableList();
    
    const tid = t_id;
    callSelectBookingCon(tid, thisDate);
  });

};

$('#doReservation').click(function() {
  const thisDate = $('#datepickInput').val();
  const thisTimeTable = $('#timeTableList').val();
  const tid = t_id;
  if(!thisDate) {
    alert("날짜를 선택하십시오.");
    return;/*ㅇ*/
  }
  if(thisTimeTable == 0) {
    alert("시간을 선택하십시오.");
    $('#timeTableList').focus();
    return;
  }
  if(!confirm(thisDate + " 예약하시겠습니까?")) return;

  // PS. 다희씨가 여기다가 날짜를 제외한 다른 데이터 넣어서 잘 조리 해주세요.?
  const obj = {
    "uid": "test",
    "bdate": thisDate,
    "price": 50000,
    "bWishList": $('#datewantInput').val(),
    "tid": "trainer",
    "timeTable": thisTimeTable
  }

  const reqBody = {
    jsonData : JSON.stringify(obj)
  }
  console.log(reqBody)
		requestPay();
	$.post('http://localhost:8081/BuildBookingCon', reqBody, function(res) {
	    if(res > 0) {
	      alert("예약되었습니다.");
	      
	      // 예약되면 타임테이블 초기화 후 새로 로딩한다.
	      initTimeTableList();
	      callSelectBookingCon(tid, thisDate);
	      
	      // 요구사항 박스를 비운다.
	      $('#datewantInput').val('');
	    } else {
	      alert("예약 실패하였습니다.");
		}
	});
  
})

renderCalender();

const prevMonth = () => {
  date.setMonth(date.getMonth() - 1);
  renderCalender();
};

const nextMonth = () => {
  date.setMonth(date.getMonth() + 1);
  renderCalender();
};

const goToday = () => {
  date = new Date();
  renderCalender();
};

$("#reservationView").click(function() {
  $('.badge-danger').remove();
  $('#datepickInput').val('');
})

// 예약테이블 콜백함수
function callSelectBookingCon(tid, thisDate) {
	  
      const jsonData = {
        tid : tid,
        bdate: thisDate
      }
      const reqObj = {
	    jsonData : JSON.stringify(jsonData)
	  }
      $.post('http://localhost:8081/SelectBookingCon', reqObj, function(res) {
	  	res.forEach((item, i) => {
			$('#timeTableList option').each(function() {
				const thisText = $(this).text();
			    if($(this).val() == item.timeTable) {
					$(this).text(thisText + " (예약불가)");
					$(this).css('color', '#AAAAAA');
					$(this).attr('disabled', true);
				}
			});
		});
      });
}

// 타임테이블 초기화
function initTimeTableList() {
	$('#timeTableList option').each(function(i, opt) {
		if($(this).val() != "0") $(this).remove();
	});
	
	/********************** 초기화 후 재정렬 **********************/
	let timeTableListTag = "";
    timeTableArr.forEach((item, i) => {
		timeTableListTag += '<option value="' + item.value +  '">' + item.time + '</option>';
	});
	$('#timeTableList').append(timeTableListTag);
	/********************************************/
}

var IMP = window.IMP; 
        IMP.init("imp00658331"); 
      
        var today = new Date();   
        var hours = today.getHours(); // 시
        var minutes = today.getMinutes();  // 분
        var seconds = today.getSeconds();  // 초
        var milliseconds = today.getMilliseconds();
        var makeMerchantUid = hours +  minutes + seconds + milliseconds;
        

        function requestPay() {
            IMP.request_pay({
                pg : 'html5_inicis.INIpayTest',
                pay_method : 'card',
                merchant_uid: "IMP"+makeMerchantUid, 
                name : '헬스 예약',
                amount : 1,
                buyer_email : 'Iamport@chai.finance',
                buyer_name : '아임포트 기술지원팀',
                buyer_tel : '010-1234-5678',
                buyer_addr : '서울특별시 강남구 삼성동',
                buyer_postcode : '123-456'
            }, function (rsp) { // callback
                if (rsp.success) {
                    alert('결제 성공! 예약되었습니다!');
                } else {
                   alert('결제 성공! 예약되었습니다!');
                }
            });
        }


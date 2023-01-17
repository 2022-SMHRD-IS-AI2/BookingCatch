
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
  });

};

$('#doReservation').click(function() {
  const thisDate = $('#datepickInput').val();
  if(!thisDate) {
    alert("날짜를 선택하십시오.");
    return;
  }
  if(!confirm(thisDate + " 예약하시겠습니까?")) return;

  // PS. 다희씨가 여기다가 날짜를 제외한 다른 데이터 넣어서 잘 조리 해주세요.
  const obj = {
    "uid": "test5",
    "bdate": thisDate,
    "price": 200000,
    "bWishList": "요구사항입니다.",
    "tid": "trainer"
  }

  const reqBody = {
    jsonData : JSON.stringify(obj)
  }
  $.post('http://localhost:8081/BuildBookingCon', reqBody, function(res) {
    if(res > 0) {
      alert("예약되었습니다.");
      
      // 예약되면 새로 로딩한다.
      const tid = {
        jsonData : "trainer"
      }
      $.post('http://localhost:8081/SelectBookingCon', tid, function(res) {
  
        $(".date").each(function(i, item) {
          if(thisDate == $(this).attr("data-date")) {
            $(this).append('<span class="badge badge-danger">예약불가</span>');
            return false;
          }
        })
      });
    } else {
      alert("예약 실패하였습니다.");
    }
  });
})

renderCalender();

const prevMonth = () => {
  date.setMonth(date.getMonth() - 1);
  renderCalender();

  // 함수로 만들어서 호출해야하나... 시간이 없다 ㅠ
  // 달력을 새로 그릴때도 호출해야함
  const tid = {
    jsonData : "trainer"
  }
  $.post('http://localhost:8081/SelectBookingCon', tid, function(res) {
    $.each(res, function (index, item) {

      const bdate = item.bdate;
      $(".date").each(function(i, item) {
        if(bdate == $(this).attr("data-date")) {
          $(this).append('<span class="badge badge-danger">예약불가</span>');
        }
      })
    });
  });
};

const nextMonth = () => {
  date.setMonth(date.getMonth() + 1);
  renderCalender();

  // 함수로 만들어서 호출해야하나... 시간이 없다 ㅠ
  // 달력을 새로 그릴때도 호출해야함
  const tid = {
    jsonData : "trainer"
  }
  $.post('http://localhost:8081/SelectBookingCon', tid, function(res) {
    $.each(res, function (index, item) {

      const bdate = item.bdate;
      $(".date").each(function(i, item) {
        if(bdate == $(this).attr("data-date")) {
          $(this).append('<span class="badge badge-danger">예약불가</span>');
        }
      })
    });
  });
};

const goToday = () => {
  date = new Date();
  renderCalender();

  // 함수로 만들어서 호출해야하나... 시간이 없다 ㅠ
  // 달력을 새로 그릴때도 호출해야함
  const tid = {
    jsonData : "trainer"
  }
  $.post('http://localhost:8081/SelectBookingCon', tid, function(res) {
    $.each(res, function (index, item) {

      const bdate = item.bdate;
      $(".date").each(function(i, item) {
        if(bdate == $(this).attr("data-date")) {
          $(this).append('<span class="badge badge-danger">예약불가</span>');
        }
      })
    });
  });
};

$("#reservationView").click(function() {
  $('.badge-danger').remove();
  $('#datepickInput').val('');
  const tid = {
    jsonData : "trainer"
  }
  $.post('http://localhost:8081/SelectBookingCon', tid, function(res) {
    $.each(res, function (index, item) {

      const bdate = item.bdate;
      $(".date").each(function(i, item) {
        if(bdate == $(this).attr("data-date")) {
          $(this).append('<span class="badge badge-danger">예약불가</span>');
        }
      })
    });
  });
})
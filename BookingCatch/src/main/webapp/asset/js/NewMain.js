$(function() { // 보이기 | 숨기기
    // 버튼 클릭시 
     $(".fixed-menu").click(function() { 
        $('html, body').animate({ scrollTop : 0 // 0 까지 animation 이동합니다. 
        }, 400); // 속도 400 
        return false; 
     }); 
   });
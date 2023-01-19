$(function() { // 보이기 | 숨기기
    // 버튼 클릭시 
     $(".fixed-menu").click(function() { 
        $('html, body').animate({ scrollTop : 0 // 0 까지 animation 이동합니다. 
        }, 400); // 속도 400 
        return false; 
     }); 
   });
  const navMenu = document.getElementById('special-li');
const hiddenMenu = document.getElementById('menu-hidden');

/*===== 아이콘 클릭 시 메뉴바 보여주기 ====*/

    navMenu.addEventListener('mouseover', () =>{
        hiddenMenu.classList.add('show-menu');
    });


/*===== 아이콘 클릭 시 메뉴바 사라지게 하기 =====*/

    navMenu.addEventListener('mouseout', () =>{
    hiddenMenu.classList.remove('show-menu');
  });

    hiddenMenu.addEventListener('mouseover',()=>{
        hiddenMenu.classList.add('show-menu')
    });
    hiddenMenu.addEventListener('mouseout',()=>{
        hiddenMenu.classList.remove('show-menu')
    });
    

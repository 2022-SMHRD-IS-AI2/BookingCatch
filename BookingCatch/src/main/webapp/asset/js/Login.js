let btn1 = document.getElementById('user')
let btn2 = document.getElementById('trainer')
let cnt1 =0;
let cnt2 =0;

btn1.addEventListener('click',()=>{
    if(cnt1==0){
        btn1.style.backgroundColor='black';
        btn1.style.color='white';
        btn2.style.backgroundColor='white';
        btn2.style.color='black';
        cnt1=1;
        cnt2=0;
    }else{
        cnt1=0;
        btn1.style.backgroundColor='white';
        btn1.style.color='black';
    }


})
btn2.addEventListener('click',()=>{
    if(cnt2==0){
        btn1.style.backgroundColor='white';
        btn1.style.color='black';
        btn2.style.backgroundColor='black';
        btn2.style.color='white';
        cnt2=1;
        cnt1=0;
    }else{
        cnt2=0;
        btn2.style.backgroundColor='white';
        btn2.style.color='black';
    }


})


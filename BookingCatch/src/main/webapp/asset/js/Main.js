let closeList = document.getElementById('close');
let hidden = document.getElementById('hidden-list');
let myFav = document.getElementById('addEvent');

closeList.addEventListener('click',()=>{
    hidden.style.display='none';
});
myFav.addEventListener('click',()=>{
    hidden.style.visibility='visible';
});





$.post("/TrainerListCon", function(res) {
   let ENFJContext = "";
   let ISTJContext = "";
   let INTPContext = "";
   for(let i = 0; i < res.length; i++) {
      const obj = res[i];
      if(obj.ttype === "Z") {
         ENFJContext += '<div class="trainers" data-id="' + obj.tid + '"><img src="' + obj.tImg + '" alt=""><div class="trainers-name">' +
         '<span>' + obj.name + '</span><div class="name-and-stars"><span>"' + obj.tIntro + '"</span>' +
         '<span><i class="fa-solid fa-star" style="color: rgb(247, 213, 22);"></i>' + obj.tScore + '(' + obj.tScore + ')</span></div></div></div>';
      } else if(obj.ttype === "H") {
         ISTJContext += '<div class="trainers" data-id="' + obj.tid + '"><img src="' + obj.tImg + '" alt=""><div class="trainers-name">' +
         '<span>' + obj.name + '</span><div class="name-and-stars"><span>"' + obj.tIntro + '"</span>' +
         '<span><i class="fa-solid fa-star" style="color: rgb(247, 213, 22);"></i>' + obj.tScore + '(' + obj.tScore + ')</span></div></div></div>';
      } else {
         INTPContext += '<div class="trainers" data-id="' + obj.tid + '"><img src="' + obj.tImg + '" alt=""><div class="trainers-name">' +
         '<span>' + obj.name + '</span><div class="name-and-stars"><span>"' + obj.tIntro + '"</span>' +
         '<span><i class="fa-solid fa-star" style="color: rgb(247, 213, 22);"></i>' + obj.tScore + '(' + obj.tScore + ')</span></div></div></div>';
      }
   }
   $('#trainers-pt').append(ENFJContext);
   $('#trainers-pilates').append(ISTJContext);
   $('#trainers-yoga').append(INTPContext);
   
   $('.trainers').click(function() {
      const tid = $(this).attr("data-id");
      location.href = "/TrainerProfile.jsp";
   })
})

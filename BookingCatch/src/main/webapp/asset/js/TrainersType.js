$.post("/TrainerListCon", function(res) {
   let zoomContext = "";
   let homeContext = "";
   let centerContext = "";
   for(let i = 0; i < res.length; i++) {
      const obj = res[i];
      if(obj.ttype === "Z") {
         zoomContext += '<div class="trainers" data-id="' + obj.tid + '"><img src="' + obj.tImg + '" alt=""><div class="trainers-name">' +
         '<span>' + obj.name + '</span><div class="name-and-stars"><span>"' + obj.tIntro + '"</span>' +
         '<span><i class="fa-solid fa-star" style="color: rgb(247, 213, 22);"></i>' + obj.tScore + '(' + obj.tScore + ')</span></div></div></div>';
      } else if(obj.ttype === "H") {
         homeContext += '<div class="trainers" data-id="' + obj.tid + '"><img src="' + obj.tImg + '" alt=""><div class="trainers-name">' +
         '<span>' + obj.name + '</span><div class="name-and-stars"><span>"' + obj.tIntro + '"</span>' +
         '<span><i class="fa-solid fa-star" style="color: rgb(247, 213, 22);"></i>' + obj.tScore + '(' + obj.tScore + ')</span></div></div></div>';
      } else {
         centerContext += '<div class="trainers" data-id="' + obj.tid + '"><img src="' + obj.tImg + '" alt=""><div class="trainers-name">' +
         '<span>' + obj.name + '</span><div class="name-and-stars"><span>"' + obj.tIntro + '"</span>' +
         '<span><i class="fa-solid fa-star" style="color: rgb(247, 213, 22);"></i>' + obj.tScore + '(' + obj.tScore + ')</span></div></div></div>';
      }
   }
   $('#trainers-pt').append(zoomContext);
   $('#trainers-pilates').append(homeContext);
   $('#trainers-yoga').append(centerContext);
   
   $('.trainers').click(function() {
      const tid = $(this).attr("data-id");
      location.href = "/TrainerProfile.jsp?tid=" + tid;
   })
})

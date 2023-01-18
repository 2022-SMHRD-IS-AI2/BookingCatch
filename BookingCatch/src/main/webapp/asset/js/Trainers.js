$.post("/TrainerListCon", function(res) {
   let healthContext = "";
   let pilatesContext = "";
   let yogaContext = "";
   for(let i = 0; i < res.length; i++) {
      const obj = res[i];
      if(obj.ttype === "H") {
         healthContext += '<div class="trainers" data-id="' + obj.tid + '"><img src="' + obj.tImg + '" alt=""><div class="trainers-name">' +
         '<span>' + obj.name + '</span><div class="name-and-stars"><span>"' + obj.tIntro + '"</span>' +
         '<span>★' + obj.tScore + '(' + obj.tScore + ')</span></div></div></div>';
      } else if(obj.ttype === "P") {
         pilatesContext += '<div class="trainers" data-id="' + obj.tid + '"><img src="' + obj.tImg + '" alt=""><div class="trainers-name">' +
         '<span>' + obj.name + '</span><div class="name-and-stars"><span>"' + obj.tIntro + '"</span>' +
         '<span>★' + obj.tScore + '(' + obj.tScore + ')</span></div></div></div>';
      } else {
         yogaContext += '<div class="trainers" data-id="' + obj.tid + '"><img src="' + obj.tImg + '" alt=""><div class="trainers-name">' +
         '<span>' + obj.name + '</span><div class="name-and-stars"><span>"' + obj.tIntro + '"</span>' +
         '<span>★' + obj.tScore + '(' + obj.tScore + ')</span></div></div></div>';
      }
   }
   $('#trainers-pt').append(healthContext);
   $('#trainers-pilates').append(pilatesContext);
   $('#trainers-yoga').append(yogaContext);
   
   $('.trainers').click(function() {
      const tid = $(this).attr("data-id");
      location.href = "/TrainerProfile.jsp?tid=" + tid;
   })
})

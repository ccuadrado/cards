jQuery(function(){

$(".hand").delegate(".play","click",function (e) {
  var id = e.target.id;
  $(e.target).parent().appendTo('.discards#'+id);
  $(e.target).remove();
});

$('.draw').click(function (e) {
  console.log(e.target.id);
  var id = e.target.id;
  $('.deck > p > span:first').append("<button class='play' id='"+id+"' remote='true'>Play</button>").appendTo('.hand#'+ id +' > p');
  $('deck > span:first').remove();
});

});

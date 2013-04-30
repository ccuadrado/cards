jQuery(function(){

$(".hand").delegate(".play","click",function (e) {
  $(e.target).parent().appendTo('.discards');
  $(e.target).remove();
});

$('.draw').click(function (e) {
  console.log(e.target.id);
  $('.deck > p > span:first').append("<button class='play' remote='true'>Play</button>").appendTo('.hand > p');
  $('deck > span:first').remove();
});

});

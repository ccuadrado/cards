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

$("#rollerbutton").click(function (e) {
  var numberOfDice = (document.getElementById('numberofdice')).value;
  var sidesOfDice = (document.getElementById('sidesofdice')).value;
  var resultValue = 0;
  var resultText = "";
  console.log("You chose a " + numberofdice.value + "d" + sidesofdice.value);
  for(var dice = 0; dice < numberOfDice; dice++)
  {
    var tempValue = Math.floor((sidesOfDice * Math.random()) + 1);
    resultValue += Number(tempValue);
    console.log(resultValue);
    resultText += " " + tempValue.toString(); 
  }
  $("#diceresult").text(resultText + " = " + resultValue);
});



});

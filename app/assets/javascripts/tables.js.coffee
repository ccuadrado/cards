# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/ 


$(document).ready -> 
  $('#draw').click -> 
    $($('#drawdeck > td:first')[0].outerHTML).append("<br /><button id = 'play'>Play</button>").appendTo('#hand')
    $('#drawdeck > td:first').remove()

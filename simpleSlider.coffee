swicth = 1
$('#ss-target').click (e) ->
  e.stopPropagation()

  $('#pusher').addClass 'moved'
  if swicth == 1
    $('#pusher').css
      'background-color' : 'darkred'
    swicth = 0
  else
    $('#pusher').css
      'background-color' : 'darkgreen'
    swicth = 1
$(window).click ->
  $('#pusher').removeClass 'moved'




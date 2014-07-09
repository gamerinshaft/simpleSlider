swicth = 1
$('#ss-target').click ->
  if swicth == 1
    $('#pusher').css
      'background-color' : 'red'
    swicth = 0
  else
    $('#pusher').css
      'background-color' : 'green'
    swicth = 1



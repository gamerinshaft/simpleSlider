class window.SimpleSlider
  constructor: (options) ->
    @pusher   = options.$pusher
    @leftbar  = options.$leftbar
    @rightbar = options.$rightbar
    @state    = 'center'

  openLeft: ->
    @nobar(@rightbar)
    @closeRight() if @state == 'left'
    @pusher.addClass 'movedRight'
    @leftbar.removeClass 'none'
    @state = 'right'

  openRight: ->
    @nobar(@leftbar)
    @closeLeft() if @state == 'right'
    @pusher.addClass 'movedLeft'
    @rightbar.removeClass 'none'
    @state = 'left'

  close: ->
    @nobar(@rightbar) if @state == 'left'
    @nobar(@leftbar)  if @state == 'right'
    @pusher.removeClass 'movedRight'
    @pusher.removeClass 'movedLeft'
    @state = 'center'

  closeLeft: ->
    @pusher.removeClass 'movedRight'

  closeRight: ->
    @pusher.removeClass 'movedLeft'

  nobar: (position) ->
    @pusher.one 'transitionend', =>
      position.addClass 'none'

  pusherState: ->
    return @state


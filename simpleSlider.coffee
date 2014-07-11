class window.SimpleSlider
  constructor: (options) ->
    @pusher   = options.$pusher
    @leftbar  = options.$leftbar
    @rightbar = options.$rightbar
    @state    = 'center'

  openLeft: ->
    @noneofbar(@rightbar)
    @closeRight() if @state == 'left'
    @pusher.addClass 'movedRight'
    @leftbar.removeClass 'none'
    @state = 'right'

  openRight: ->
    @noneofbar(@leftbar)
    @closeLeft() if @state == 'right'
    @pusher.addClass 'movedLeft'
    @rightbar.removeClass 'none'
    @state = 'left'

  close: ->
    @noneofbar(@rightbar) if @state == 'left'
    @noneofbar(@leftbar)  if @state == 'right'
    @pusher.removeClass 'movedRight'
    @pusher.removeClass 'movedLeft'
    @state = 'center'

  closeLeft: ->
    @pusher.removeClass 'movedRight'

  closeRight: ->
    @pusher.removeClass 'movedLeft'

  noneofbar: (position) ->
    @pusher.off 'transitionend'
    @pusher.on 'transitionend', =>
      position.addClass 'none'

  pusherState: ->
    return @state


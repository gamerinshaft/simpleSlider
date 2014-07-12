class window.SimpleSlider
  constructor: (options) ->
    @pushcontent   = options.$pushcontent
    @leftbar  = options.$leftbar
    @rightbar = options.$rightbar
    @state    = 'center'

  openLeft: ->
    @nobar(@rightbar)
    @closeRight() if @state == 'left'
    @pushcontent.addClass 'movedRight'
    @leftbar.removeClass 'none'
    @state = 'right'

  openRight: ->
    @nobar(@leftbar)
    @closeLeft() if @state == 'right'
    @pushcontent.addClass 'movedLeft'
    @rightbar.removeClass 'none'
    @state = 'left'

  close: ->
    @nobar(@rightbar) if @state == 'left'
    @nobar(@leftbar)  if @state == 'right'
    @pushcontent.removeClass 'movedRight'
    @pushcontent.removeClass 'movedLeft'
    @state = 'center'

  closeLeft: ->
    @pushcontent.removeClass 'movedRight'

  closeRight: ->
    @pushcontent.removeClass 'movedLeft'

  nobar: (position) ->
    @pushcontent.off 'transitionend'
    @pushcontent.on 'transitionend', =>
      position.addClass 'none'

  pusherState: ->
    return @state


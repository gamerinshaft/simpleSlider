class window.SimpleSlider
  constructor: (options) ->
    @pushcontent   = options.$pushcontent
    @pushheader   = options.$pushheader
    @leftbar  = options.$leftbar
    @rightbar = options.$rightbar
    @state    = 'center'

  openLeft: ->
    @nobar(@rightbar)
    @closeRight() if @state == 'left'
    @pushcontent.addClass 'movedRight-content'
    @pushheader.addClass 'movedRight-header'
    @leftbar.removeClass 'none'
    @state = 'right'

  openRight: ->
    @nobar(@leftbar)
    @closeLeft() if @state == 'right'
    @pushcontent.addClass 'movedLeft-content'
    @pushheader.addClass 'movedLeft-header'
    @rightbar.removeClass 'none'
    @state = 'left'

  close: ->
    @nobar(@rightbar) if @state == 'left'
    @nobar(@leftbar)  if @state == 'right'
    @pushcontent.removeClass 'movedRight-content'
    @pushcontent.removeClass 'movedLeft-content'
    @pushheader.removeClass 'movedRight-header'
    @pushheader.removeClass 'movedLeft-header'
    @state = 'center'

  closeLeft: ->
    @pushcontent.removeClass 'movedRight-content'
    @pushheader.removeClass 'movedRight-header'

  closeRight: ->
    @pushcontent.removeClass 'movedLeft-content'
    @pushheader.removeClass 'movedLeft-header'

  nobar: (position) ->
    @pushcontent.off 'transitionend'
    @pushcontent.on 'transitionend', =>
      position.addClass 'none'

  pusherState: ->
    return @state


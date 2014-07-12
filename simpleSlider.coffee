class window.SimpleSlider
  constructor: (options) ->
    @pushcontent   = options.$pushcontent
    @pushheader   = options.$pushheader
    @leftbar  = options.$leftbar
    @rightbar = options.$rightbar
    @state    = 'center'

  moveCenter: ->
    if @state == 'left'
      @pushcontent.removeClass 'movedLeft-content'
      @pushheader.removeClass 'movedLeft-header'
      @hidebar(@rightbar)
    else if @state == 'right'
      @hidebar(@leftbar)
      @pushcontent.removeClass 'movedRight-content'
      @pushheader.removeClass 'movedRight-header'
    @state = 'center'

  moveRight: ->
    @leftbar.removeClass 'none'
    @pushcontent.addClass 'movedRight-content'
    @pushheader.addClass 'movedRight-header'
    if @state == 'left'
      @hidebar(@rightbar)
      @pushcontent.removeClass 'movedLeft-content'
      @pushheader.removeClass 'movedLeft-header'
    @state = 'right'

  moveLeft: ->
    @rightbar.removeClass 'none'
    @pushcontent.addClass 'movedLeft-content'
    @pushheader.addClass 'movedLeft-header'
    if @state == 'right'
      @hidebar(@leftbar)
      @pushcontent.removeClass 'movedRight-content'
      @pushheader.removeClass 'movedRight-header'
    @state = 'left'

  hidebar: (position) ->
    @pushcontent.off 'transitionend'
    @pushcontent.on 'transitionend', =>
      position.addClass 'none'

  pusherState: ->
    return @state


class window.SimpleSlider
  constructor: (options) ->
    @pushcontent = options.$pushcontent
    @pushheader  = options.$pushheader
    @leftbar     = options.$leftbar
    @rightbar    = options.$rightbar
    @state       = 'center'

    @pushcontent.on 'transitionend', =>
      if @state == 'right'
        @rightbar.addClass 'none'
      else if @state == 'left'
        @leftbar.addClass 'none'

  moveCenter: ->
    @pushcontent.off 'transitionend'
    if @state == 'left'
      @pushcontent.removeClass 'movedLeft-content'
      @pushheader.removeClass 'movedLeft-header'
    else if @state == 'right'
      @pushcontent.removeClass 'movedRight-content'
      @pushheader.removeClass 'movedRight-header'
    @state = 'center'

  moveRight: ->
    @pushcontent.off 'transitionend'
    @leftbar.removeClass 'none'
    @pushcontent.addClass 'movedRight-content'
    @pushheader.addClass 'movedRight-header'
    if @state == 'left'
      @pushcontent.removeClass 'movedLeft-content'
      @pushheader.removeClass 'movedLeft-header'
    @state = 'right'

  moveLeft: ->
    @pushcontent.off 'transitionend'
    @rightbar.removeClass 'none'
    @pushcontent.addClass 'movedLeft-content'
    @pushheader.addClass 'movedLeft-header'
    if @state == 'right'
      @pushcontent.removeClass 'movedRight-content'
      @pushheader.removeClass 'movedRight-header'
    @state = 'left'

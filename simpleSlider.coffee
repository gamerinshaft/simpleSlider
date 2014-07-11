class window.SimpleSlider
  constructor: (options) ->
    @pusher   = options.$pusher
    @leftbar     = options.$leftbar
    @rightbar     = options.$right
    @state    = 'center'

  openLeft: ->
    if @state == 'left'
      @closeRight()

    @pusher.addClass 'movedRight'
    @state = 'right'

  openRight: ->
    if @state == 'right'
      @closeLeft()

    @pusher.addClass 'movedLeft'
    @state = 'left'

  close: ->
    @pusher.removeClass 'movedRight'
    @pusher.removeClass 'movedLeft'
    @state = 'center'

  closeLeft: ->
    @pusher.removeClass 'movedRight'

  closeRight: ->
    @pusher.removeClass 'movedLeft'

  pusherState: ->
    return @state
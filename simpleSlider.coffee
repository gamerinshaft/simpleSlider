class window.SimpleSlider
  constructor: (options) ->
    @pusher      = options.$pusher
    @state = 'center'

  openLeft: =>
    if @state = 'left'
      this.closeRight()
    @pusher.addClass 'movedRight'
    @state = 'right'

  openRight: =>
    if @state = 'right'
      this.closeLeft()
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
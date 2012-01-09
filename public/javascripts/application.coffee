series = _.shuffle _.range(1, 20)
series.cursor = 0

next = ->
  series.cursor = if series.cursor < series.length - 1 then series.cursor + 1 else 0
  series[series.cursor]

bg = new Backstretch "/images/backgrounds/" + next() + ".jpg", {speed: 1000}
      
$(document).ready ->
	
  raiseBar()

  _down = (event) ->
    event.preventDefault()
    $(".key").addClass("keyDown")
    bg.change_source "/images/backgrounds/#{next()}.jpg"

  down = (event) ->
    if event.which == 13
      _down(event)

  _up = (event) ->
    event.preventDefault()
    $(".key").removeClass("keyDown")
  
  up = (event) ->
    if event.which is 13
      _up(event)

  
  $(document).keydown down       
  $(document).keyup up
  $('.key').click (e) ->
    _down(e)
    setTimeout ->
      _up(e)
    , 200


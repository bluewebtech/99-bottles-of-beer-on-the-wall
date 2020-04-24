class Bottles
  ###
  The class constructor.
  @param {Number} bottles
  ###
  constructor: (@bottles) ->

  ###
  Check if there are any bottles siting on the wall.
  @return {Boolean}
  ###
  hasBottles: () ->
    return (@bottles > 0);

  ###
  Get the pluralized string of the current bottle on the wall.
  @param {Number} bottle
  @return {String}
  ###
  pluralize: (bottle) ->
    return "bottle#{if bottle > 1 || bottle == 0 then 's' else ''}"

  ###
  Sing the song.
  @return {Void}
  ###
  sing: () ->
    if @hasBottles()
      for bottle in [@bottles - 0..1] by -1
        @verse1(bottle)
        @verse2(bottle)
        @verse3()
        @verse4(bottle)
    else
      console.log "There are currently no bottles on the wall."

  ###
  Get the first verse of the song.
  @param {Number} bottle
  @return {Void}
  ###
  verse1: (bottle) ->
    console.log "#{bottle} #{@pluralize(bottle)} of beer on the wall"

  ###
  Get the second verse of the song.
  @param {Number} bottle
  @return {Void}
  ###
  verse2: (bottle) ->
    console.log "#{bottle} #{@pluralize(bottle)} of beer"

  ###
  Get the third verse of the song.
  @return {Void}
  ###
  verse3: () ->
    console.log "Take 1 down and pass it around"

  ###
  Get the fourth verse of the song.
  @param {Number} bottle
  @return {Void}
  ###
  verse4: (bottle) ->
    console.log "#{bottle - 1} #{@pluralize(bottle - 1)} of beer on the wall\n"

bottle = new Bottles 99
bottle.sing()

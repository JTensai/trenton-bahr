resize_window = (e) ->
  $(window).trigger "resize"

$(document).foundation "reveal",
  opened: resize_window

$(document).foundation "orbit"
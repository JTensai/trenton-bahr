jQuery ->
  $(".close_modal").click ->
    $(".close-reveal-modal").click();

  $(document).ready ->
    $(".slideshow-wrapper").css('max-height', "454px")
    $(".slideshow-wrapper").css('height', "auto")
    $(".slideshow-wrapper").css('background-color', "#444")
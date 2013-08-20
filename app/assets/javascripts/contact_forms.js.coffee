hideAllDivs = ->
  $("#info_fields").hide()
  $("#booking_fields").hide()
  $("#charity_fields").hide()
  $("#preferred_date_time").hide()

handleNewSelection = ->
  hideAllDivs()
  switch $(this).val()
    when "Information"
      $("#info_fields").show()
      $("#comments_text_area").css("height",280)
    when "Booking"
      $("#booking_fields").show()
      $("#comments_text_area").css("height",85)
      $("#preferred_date_time").show()
    when "Charity Info"
      $("#charity_fields").show()
      $("#comments_text_area").css("height",151)
      $("#preferred_date_time").show()

$().ready ->
  $(".request_type_dropdown").change handleNewSelection
  
  handleNewSelection.apply $(".request_type_dropdown")
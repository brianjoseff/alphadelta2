# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/



$(document).ready ->
  
  # Optimalisation: Store the references outside the event handler:
  checkWidth = ->
    windowsize = $window.width()
    if windowsize < 800
      $("#small_screen_nav").toggle()


    return
  $window = $(window)
  $pane = $("#pane1")
  
  # Execute on load
  checkWidth()
  
  # Bind event listener
  $(window).resize checkWidth
  return

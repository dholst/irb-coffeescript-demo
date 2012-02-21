# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).on("content:loaded", ->
  $("#donation_card").on("keyup", ->
    $input = $(@)
    $input.siblings(".cc").removeClass("on")

    switch $input.val()[0]
      when "4" then $input.siblings(".visa").addClass("on")
      when "5" then $input.siblings(".mastercard").addClass("on")
      when "6" then $input.siblings(".discover").addClass("on")
  )
)

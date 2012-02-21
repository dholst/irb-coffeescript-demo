$(document).on("content:loaded", ->
  $("#donation_card").on("keyup", ->
    $input = $(@)
    creditCard = App.CreditCardFactory.create($input.val())
    $input.siblings(".cc").removeClass("on")
    $input.siblings(".cc.#{creditCard.type}").addClass("on")
  )
)

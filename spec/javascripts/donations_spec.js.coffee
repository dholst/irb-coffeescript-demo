describe "Donations", ->
  beforeEach ->
    loadFixtures "new_donation"
    $(document).trigger "content:loaded"

  it "doesn't highlight anything if unknown", ->
    $("#donation_card").val("123").trigger("keyup")
    expect($(".cc.on")).not.toExist()

  it "highlights visa card", ->
    $("#donation_card").val("456").trigger("keyup")
    expect($(".cc.on")).toHaveClass("visa")


describe "CreditCard", ->
  it "can't identify uknown cards", ->
    expect(App.CreditCardFactory.create("999").type).toEqual("unknown")

  it "identifies visa cards", ->
    expect(App.CreditCardFactory.create("4000").type).toEqual("visa")

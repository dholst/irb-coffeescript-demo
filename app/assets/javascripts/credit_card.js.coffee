class CreditCard
  constructor: (@type = "unknown") ->

class Visa extends CreditCard
  constructor: -> super "visa"

class MasterCard extends CreditCard
  constructor: -> super "mastercard"

class Discover extends CreditCard
  constructor: -> super "discover"

class App.CreditCardFactory
  @create = (number) ->
    switch number[0]
      when "4" then new Visa()
      when "5" then new MasterCard()
      when "6" then new Discover()
      else new CreditCard()

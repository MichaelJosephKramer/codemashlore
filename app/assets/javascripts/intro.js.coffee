window.Intro = {}

class Intro.theView extends Backbone.View
  initialize: ->
    @model.on "change", @render, this

  render: ->
    $(".main").html "<h1>" + @model.get("name") + "</h1>"
    this

class Intro.theModel extends Backbone.Model
  defaults:
   name: "Spongebob Squarepants"

class Intro.calcModel extends Backbone.Model
  defaults:
    operand1: 0
    operand2: 0

  add: ->
    @.get("operand1") + @.get("operand2")

  subtract: ->
    @.get("operand1") - @.get("operand2")

  multiply: ->
    @.get("operand1") * @.get("operand2")

  divide: ->
    @.get("operand1") / @.get("operand2")

class Intro.calcView extends Backbone.View
  initialize: ->
    @model.on "change", @render, this

  sum: ->
    "<h1>Sum: " + @model.add() + "</h1>"

  difference: ->
    "<h1>Difference: " + @model.subtract() + "</h1>"

  product: ->
    "<h1>Product: " + @model.multiply() + "</h1>"

  quotient: ->
    "<h1>Quotient: " + @model.divide() + "</h1>"

  render: ->
    $(".main").html @sum() + @difference() + @product() + @quotient()
    this

###
# Lab: Create a simple calculator to operate on two numbers
# Model
#  1. Should contain the operands
#  2. Should contain the arthmetic functions
#  
# View
#  1. Take a model at initialize
#  2. Create a simple render function
#  3. Bind to any model changes
#  4. Output the sum, difference, product, and quotient of the operands
#  5. Bonus points: Set up a simple form and button to take in the operands
###

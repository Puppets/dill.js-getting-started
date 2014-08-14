Driver = require('selenium-webdriver')
module.exports = ->
  @When /^I click completed on the first todo$/, ->
    new @Widget.List({
      root: "#todo-list"
    }).clickAt({
      selector: "input"
      index: 0
    })

  @Then /^its parent li should have class completed$/, ->
    new @Widget.List({
      root: "#todo-list"
    })
    .at(0).then (el) ->
      el.getAttribute("class").should.eventually.eql("completed")

  @Then /^its complete value should be checked$/, ->
    # new @Widget.List({
    #   root: "#todo-list"
    # })
    # .at(0).then (el) ->
    #   el.getAttribute({selector:".toggle", attribute:"checked"}).should.eventually.eql(true)
##############WAITING FOR GET ATTRIBUTE PUSH

  # @Then /^I double click it$/, ->
  #   W = new @Widget.List({
  #     root: "#todo-list"
  #   })
  #   W.clickAt({index: 0, selector: "label"})
  #   W.clickAt({index: 0, selector: "label"})

  @Then /^the todo should be in editing mode$/, ->
    new @Widget.List({
      root: "#todo-list"
    }).at(0).then (el) ->
      el.getAttribute("class").should.eventually.eql("editing")
# require_relative '../support/page_helper.rb'
Given('I am checking an item I want to buy') do
    cart.load
    item.load
  end
  
  When('I add it to my cart') do
    item.add_to_cart
  end
  
  When('I want to continue shopping') do
    cart.continue_shopping
  end
  
  Then('I keep searching for other products') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  When('I want to checkout') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Then('I proceed to checkout') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Given('I have an item added to my cart with quantity {int}') do |int|
  # Given('I have an item added to my cart with quantity {float}') do |float|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  When('I decrease the quantity') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Then('the item is removed from my cart') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  When('I ask to remove it') do
    pending # Write code here that turns the phrase above into concrete actions
  end
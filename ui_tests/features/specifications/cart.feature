@cart_feature
Feature: Cart

- As a customer, I want to manage my cart before checkout

Scenario: Add an item to my cart and continue shopping
Given I am checking an item I want to buy
When I add it to my cart
And I want to continue shopping
Then I keep searching for other products

Scenario: Add an item to my cart and proceed to checkout
Given I am checking an item I want to buy
When I add it to my cart
And I want to checkout
Then I proceed to checkout

Scenario: Try to keep an item with quantity 0 on my cart
Given I have an item added to my cart with quantity 1
When I decrease the quantity
Then the item is removed from my cart

Scenario: Remove an item of my cart
Given I have an item added to my cart with quantity 1
When I ask to remove it
Then the item is removed from my cart
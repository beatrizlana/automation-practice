Feature: Signup and Checkout

- As a customer, I want to proceed to Checkout
- User must sign up or sign in before checking out

Scenario: Fill in required information successfully
Given my cart is not empty
And I did not sign up
And I proceeded to checkout
When I fill in <first name>, <last name>, <email>, <password>,
    <address>, <city>, <state>, <zip code>, <country> and <mobile phone> correctly
Then I proceed to next step

Scenario: Fill in required information with invalid data
Given my cart is not empty
And I did not sign up
And I proceeded to checkout
When I fill in <first name>, <last name>, <email>, <password>,
    <address>, <city>, <state>, <zip code>, <country> and <mobile phone> with invalid data
Then I get an error <error invalid data>

Scenario: Try to sign in with an invalid email
Given I did not sign up
And I proceeded to checkout
When I use an <invalid email> to sign in
Then I get an error <error invalid email>

Scenario: Define address and ship
Given my cart is not empty
And I just signed up
And I proceeded to checkout
When I fill in address and ship information
Then I proceed to next step

Scenario: Complete payment successfully
Given my cart is not empty
And I am signed in
And I proceeded to checkout
And all my data is correctly filled in
When I choose payment type
Then I am able to pay
And I finish my purchase

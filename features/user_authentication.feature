Feature: User Authentication
  In order to use the app
  As a user
  I want to authenticate as a user

Scenario: Authentication successfull
  Given I am not logged in 
  And I am on the homepage
  When I push the authenticate button
  Then I should see my name

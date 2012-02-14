Feature: admin creates champion
  In order to grap statistics from champions
  As an admin
  I want to create som champions

  Background:
    Given I am an admin

  Scenario: admin creates a valid champion
    When I go to champions page 
    And I create a new champion called "Katarina"
    Then I should see "Katarina" on champions list

  Scenario: Try to create a same champion
    Given I have champion "Annie" created
    When I go to champions page 
    And I create a new champion called "Annie"
    Then I should see an error

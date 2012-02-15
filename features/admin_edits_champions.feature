Feature: admin edits existing champion
  In order to edit a champion paramaters
  As an admin
  I want to edit any champion

  Background:
    Given I am an admin
    Given I have champion "Katarina" created
    Given I have champion "Annie" created
    Given I go to edit champion page
  Scenario: admin edits an existing champion
    When I edit "Katarina" name
    Then I should see champions name updated

  Scenario: Try to edit with same attributs like other champion
    When I edit a champion called "Katarina" and called "Annie"
    Then I should see an error

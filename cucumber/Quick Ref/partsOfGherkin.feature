Feature: Insert detailed description here

  Background: Insert background description here
    Given I sign in as "user1" #! if you feel the developer needs more information than add a dev comment

  #Comments should be added at the top of the scenario
  Scenario Outline: GT_createAccount_1: Insert Scenario description here: REQ-987
     When I select "<user_type>" from the "add users" dropdown on the "account" page
      And I click on "create account" on the "home" Page
      And I fill in the following fields on the "create account" page:
      | field     | entered_value |
      | full name | John E Doe    |
      | username  | jedoe         |
      | password  | tropical1     |
      And I click on "submit" on the "create account" page
     Then I should be on the "My Account" Page
    Examples:
      | user_type       |
      | co-borrower     |
      | authotized user |
      | owner           |

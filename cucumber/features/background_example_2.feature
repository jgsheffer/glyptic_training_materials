Feature: Insert detailed description here

  Background: Insert background description here
    Given I sign in as "user1"

  Scenario:Examples 1
    When I click on "My Account" on the "Home" Page
    Then I should be on the "My Account" Page

  Scenario:Examples 2
    When I click on "Log out" on the "Home" Page
    Then I should be on the "Login" Page

  Scenario:Examples 3
    When I click on "My Account" on the "Home" Page
    And I click on "Log out" on the "My Account" Page
    Then I should be on the "Login" Page

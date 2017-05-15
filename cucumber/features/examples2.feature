@test1
Feature: The create account page should have verification on all the fields

  Scenario: Missing name
     And I click on "submit" on the "Create Account" Page
    Then the "missing name error" on the "Create Account" Page should be visible

  Scenario:Missing email
     And I click on "submit" on the "Create Account" Page
    Then the "missing email error" on the "Create Account" Page should be "visible"

############################################################################################################
############################################################################################################
############################################################################################################

Feature: Amazon create account page should have verification on all  the fields

  Scenario Outline: All of the fields should display an error when not populated on form submission
  Given I am using the "<user_data>"
	 And I click on "submit" on the "Create Account" Page
	Then the "<error>" on the "Create Account" Page should be "visible"

  Examples:
	  | user_data | error                  |
	  | user1     | missing name error     |
	  | user1     | missing email error    |
    | user1     | missing password error |

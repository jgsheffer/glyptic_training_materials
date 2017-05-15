Scenario: Redirect user to originally requested page after logging in
  Given a User "dave" exists with password "secret"
  And I am not logged in
  When I navigate to the "home" page
  Then I am redirected to the login form
  When I fill in "Username" with "dave"
  And I fill in "Password" with "secret"
  And I press "Login"
  Then I should be on the "home" page


    ############################################################################################################
    ############################################################################################################
    ############################################################################################################

Scenario:  Deny a guest access to restricted material
  Given I am an unauthenticated guest
  When I attempt to access restricted content
  Then I am denied access to the restricted content

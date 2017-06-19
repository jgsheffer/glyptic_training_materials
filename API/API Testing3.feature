Feature: description here

  Scenario: the user makes a successful login request
    Given the user connects to the "authentication" service
     When the user sends a "login" request using "login_request1.json"
     Then I should get a successful response
      And the response should match "login_success.json"

  Scenario: the user makes a successful get transaction request
    Given the user authenticates using "login_request1.json"
    Given the user connects to the "transaction" service #! This transaction requires a authentication token.  Pass token from previous step
     When the user sends a "get transactions" request using "login_request1.json"
     Then I should get a successful response
      And the response should match "get_transactions_request.json"

  Scenario Outline: the user makes a successful get transaction request
    Given the user authenticates using "<login_request>"
    Given the user connects to the "transaction" service #! This transaction requires a authentication token.  Pass token from previous step
     When the user sends a "get transactions" request using "login_request1.json"
     Then I should get a successful response
      And the response should match "get_transactions_request.json"

    Examples:
      | login_request                 |
      | login_request_admin.json      |
      | login_request_user.json       |
      | login_request_super_user.json |
      | login_request_superman.json   |

Feature: description here

  Scenario: the user makes a successful login request
    Given the user connects to the "authentication" service
     When the user sends a "login" request using "login_request1.json"
     Then I should get a successful response
      And the response should match "login_success.json"

  Scenario: the user makes a successful get transaction request
    Given the user authenticates using "login_request1.json"
      And the user connects to the "transaction" service #! This transaction requires a authentication token.  Pass token from previous step
     When the user sends a "get transactions" request using "get_transactions_request1.json"
     Then I should get a successful response
      And the response should match "get_transactions_response.json"

  Scenario: the user makes a successful get transaction request
    Given the user authenticates using "<login_request>"
      And the user connects to the "transaction" service #! This transaction requires a authentication token.  Pass token from previous step
     When the user sends a "get transactions" request using "get_transactions_request1.json"
     Then I should get a successful response
      And the response should match "get_transactions_response.json"

    Examples:
      | login_request                 |
      | login_request_admin.json      |
      | login_request_user.json       |
      | login_request_super_user.json |
      | login_request_superman.json   |

  Scenario: the user makes a successful get transaction request
    Given the user authenticates using "<login_request>"
      And the user connects to the "transaction" service #! This transaction requires a authentication token.  Pass token from previous step
     When the user sends a "get transactions" request using "<transaction_request>"
     Then I should get a "<response_status>" response
      And the response should match "<transaction_response>"

    Examples:
      | login_request                 | transaction_request            | response_status | transaction_response       |
      | login_request_admin.json      | get_transactions_request1.json | successful      | transaction_response1.json |
      | login_request_user.json       | invalid_transation_req.json    | failure         | general_server_error.json  |
      | login_request_super_user.json | invalid_token_request.json     | failure         | authentication_error.json  |

Feature: User Login API
  In order to login
  As an employee
  I need to be authenticated

  Scenario: Valid User Login
    Given valid credentials 
    When I request login with valid details
    Then I need to be logged

  Scenario: Invalid User Login
    Given invalid credentials 
    When I request login with invalid details
    Then I need to see error message

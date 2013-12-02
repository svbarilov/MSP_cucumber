Feature: Log in to MSP functionality test
  As a user I want to be able to log in to MSP
  In order to use it

  Background:
    Given I am on msp login page

  Scenario: Invalid name is rejected
    When I enter an invalid name: "name@email.com"
    And  I enter a blank password
    And  I click login
    Then I should see the error message "Invalid email or password"

  Scenario: Invalid password is rejected
    When I enter an invalid password: "some_assword"
    And  I enter a blank name
    And  I click login
    Then I should see the error message "Invalid email or password"

  Scenario: Invalid name and invalid password is rejected
    When I enter an invalid password: "some_assword"
    And  I enter an invalid name: "name@email.com"
    And  I click login
    Then I should see the error message "Invalid email or password"

  Scenario: Invalid name and valid password is rejected
    When I enter an invalid name: "name@email.com"
    And  I enter a valid password
    And  I click login
    Then I should see the error message "Invalid email or password"

  Scenario: Valid name and invalid password is rejected
    When  I enter a valid name
    And   I enter an invalid password: "some_assword"
    And   I click login
    Then  I should see the error message "Invalid email or password"

  Scenario: I can log in with valid name and valid password
    When I enter a valid name
    And   I enter a valid password
    And   I click login
    Then Login is successful

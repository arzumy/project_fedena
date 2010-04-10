Feature: Manage login logout
  In order to manage student
  As an admin
  I want to be able to login

  Background:
    Given an admin user exists
    And I am on the homepage

  Scenario: Admin Login
    Given I fill in the following:
      | Username  | admin     |
      | Password  | admin123  |
    When I press "submit"
    Then I should see "Welcome, Fedena Administrator!"

  Scenario: Admin Login with wrong password
    Given I fill in the following:
      | Username  | admin     |
      | Password  | wrongpass |
    When I press "submit"
    Then I should see "Invalid username or password combination"
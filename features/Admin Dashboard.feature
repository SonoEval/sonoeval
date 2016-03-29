Feature: Admin Dashboard

  As an admin
  I want an admin dashboard
  So that I can administer users and exams

  Scenario: View admin dashboard
    Given I'm logged in
    And and I have the admin role
    When I navigate to the dashboard page
    Then I should see a table of users and their roles

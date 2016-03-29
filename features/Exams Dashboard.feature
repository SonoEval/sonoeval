Feature: Exam Dashboard

  As a user
  I want to see a table of exams
  So that I can view information about submitted exams

Scenario: View all exams
    Given I'm logged in
    And and I have the admin role
    When I navigate to the dashboard page
    And I click on the Exams toggle
    Then the table display should change to showing Exams instead of users
    
  Scenario: View one user's exams
  
  Scenario: Search exams
    
  Scenario: Sort exams list

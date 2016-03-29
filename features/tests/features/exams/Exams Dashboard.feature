Feature: Exam Dashboard

  As a user
  I want to see a table of exams
  So that I can view information about submitted exams

  Scenario: View all exams
    Given I'm logged in
    And and I have the admin role
    When I navigate to the Exams page
    Then I should see a table of all the exams
    And the results should contain a patinet ID, username, exam type, created date, and a status
    And the patient ID should by hyperlinked to that exam's page
    And the results should be sortable
    
  Scenario: View a single user's exams
    Given I'm logged in
    And I have the admin role
    When I'm viewing the Exams page
    Then I should be able to filter on a single user's exams
  
  Scenario: Search exams
    
  Scenario: Sort exams list
    
  Scenario: Delete exams
    
  Scenario: Go to individual exam page

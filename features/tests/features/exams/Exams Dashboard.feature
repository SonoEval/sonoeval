Feature: Exam Dashboard

  As a user
  I want to see a table of exams
  So that I can view information about submitted exams

  Scenario: Admin default view 
    Given I'm logged in
    And and I have the admin role
    When I navigate to the Exams page
    Then I should see a table of all the exams
    And the results should contain a patinet ID, username, exam type, created
      date, and a status
    And the patient ID should by hyperlinked to that exam's page
    And the results should be sortable
    
  Scenario: View a single user's exams
    Given I'm logged in
    And I have the admin role
    When I'm viewing the Exams page
    Then I should be able to filter on a single user's exams
    
  Scenario: Normal user exam view
    Given I'm logged in
    And I do not have the admin role
    When I'm viewing the Exams page
    Then I should see only my exams
  
  Scenario: Search exams
    Given I'm logged in
    And I have any role
    When I'm viewing the Exams page
    Then I should be able to search the Exams by type, patient id, tags, 
      and creator
    
  Scenario: Sort exams list
    Given I'm logged in
    And I have any role
    When I'm viewing the Exams page
    Then I should be able to sort any column displayed in the table of Exams
    
  Scenario: Delete exams
    Given I'm logged in
    And I have any role
    When I'm viewing the Exams page
    And I click on the delete button in an Exam's row
    Then I should be asked to confirm that I want to delte then exam
    And if I confirm, the exam should be deleted
    But if I cancel, then the exam should not be deleted
    
  Scenario: View individual exam as Admin
    Given I'm logged in
    And and I have the admin role
    And I'm viewing the Exams page
    When I click on any exam's patient ID
    Then I should be taken to that exam's individual exam page
    
  Scenario: View individual exams as Resident/normal user
    Given I'm logged in
    And I do not have the admin role
    And I'm viewing the exams page
    When I click on any of my exams patient ID's
    Then I should be taken to that exam's individual exam page
    But if I did not create the exam
    Then I should not be able to view it
    And should be shown a message that I am not allowed to view the exam
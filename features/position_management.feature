Feature: managing the position list
  As a super-duper-admin
  I want to control the details of each position
  In order to make updates to the availability and description of each position
  
  Scenario: Seeing what brands we have available
    Given I am logged in
      And there are positions named "Office Worker, Task Force Specialist, Volunteer Firefighter"
    When I go to the positions index
    Then I should see "Office Worker"
      And I should see "Volunteer Firefighter"
    
  Scenario: Adding a new position
    Given I am logged in
    When I go to the positions index
      And I follow "add position"
      And I fill in "Temp" for "Name"
      And I fill in "ton of work for not much pay" for "Description"
      And I check "Active" 
      And I press "Save"
    Then I should be on the positions index
      And I should see "Temp"
  
  Scenario: Editing a position
    Given I am logged in
      And there is a position named "Temp"
    When I go to the positions index
      And I follow "edit"
      And I fill in "Worker" for "Name"
      And I press "Save"
    Then I should be on the positions index
      And I should see "Worker"
  
  Scenario: seeing form errors
    Given I am logged in
      And there is a position named "Temp"
    When I go to the positions index
      And I follow "edit"
      And I fill in "" for "Name"
      And I press "Save"
    Then I should see "Edit Position"
      And I should see "prohibited this record from being saved"
  
  Scenario: no position access
    When I go to the positions index
    Then I should be rejected due to authentication
Feature: management of queue
  
  Scenario: sending an application to the queue
    Given there is an active position named "Volunteer"
      And I am on the application page for "Volunteer"
      And there are no applications in the queue
    When I fill out the membership form completely
      And I press "Submit"
    Then there should be 1 application in the queue
    
  Scenario: viewing the application queue
    Given there is one application in the queue for "Stephen Dunkin"
      And I am logged in as an admin
    When I go to the homepage
    Then I should see "Stephen Dunkin"
  
  Scenario: viewing an individual application from the queue
    Given there is one application in the queue for "Stephen Dunkin"
      And I am logged in as an admin
    When I go to the homepage
      And I follow "Stephen Dunkin"
    Then I should see "BOONE COUNTY FIRE PROTECTION DISTRICT"
    
  @javascript
  Scenario: reviewing an application
    Given there is one application with a pdf in the queue for "Stephen Dunkin"
      And I am logged in as an admin
    When I go to the homepage
      And I follow "PDF"
    Then the application for "Stephen Dunkin" should be in the state "reviewed"
  
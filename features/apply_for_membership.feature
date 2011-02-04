Feature: Membership Application
  As a member of the public
  I want to fill out an application
  In order to become a member of the organization
  
  Scenario: Filling out an application
    Given there is an active position named "Volunteer"
      And I am on the application page for "Volunteer"
    When I fill out the membership form completely
      And I press "Submit"
    Then I should see "Thanks for your application!"
    
  Scenario: seeing form errors
    Given there is an active position named "Volunteer"
      And I am on the application page for "Volunteer"
    When I fill out the membership form completely
      And I fill in "Social Security Number" with ""
      And I press "Submit"
    Then I should see "BOONE COUNTY FIRE PROTECTION DISTRICT"
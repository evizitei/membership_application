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

  Scenario: editing an application
    Given there is an active position named "Volunteer"
      And there is an application for "Volunteer" with the SSN "123-45-6789"
    When I go to the homepage 
      And I follow "Finish my application"
      And I fill in "123-45-6789" for "social_security_number"
      And I press "Find my application"
      And I follow "Application for Volunteer"
    Then show me the page
      And I press "Submit"
    Then I should see "Thanks for your application!"
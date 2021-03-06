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
      And there is an application for "Volunteer" with the SSN "123-45-6789" in state "reviewed"
    When I go to the homepage 
      And I follow "Finish/Edit my application"
      And I fill in "123-45-6789" for "social_security_number"
      And I press "Find my application"
      And I follow "Application for Volunteer"
      And I press "Submit"
    Then I should see "Thanks for your application!"
      And the application with SSN "123-45-6789" should be in state "submitted"
  
  Scenario: copying from another application
    Given there is an inactive position named "Volunteer"
      And there is an active position named "Training Bitch"
      And there is an application for "Volunteer" with the SSN "123-45-6789" in state "reviewed"
      And the application with the SSN "123-45-6789" should have a last name of "Creamer" 
    When I am on the application page for "Training Bitch"
    Then I should see "Application for 'Training Bitch'"
      And I follow "Load my data from another application"
      And I fill in "123-45-6789" for "social_security_number"
      And I press "Load my applications"
      And I follow "Copy data from Application for 'Volunteer'"
    Then I should see "Application for 'Training Bitch'"
      And the "membership_application_last_name" field should contain "Creamer"
      And the "membership_application_social_security_number" field should contain "123456789"
Feature: Membership Application
  As a member of the public
  I want to fill out an application
  In order to become a member of the organization
  
  Scenario: Filling out an application
    Given I am on the application page
    When I fill out the membership form completely
      And I press "Submit"
    Then I should see "Thanks for your application!"
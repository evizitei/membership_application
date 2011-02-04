Feature: the main page of the application

  Scenario: open positions
    Given there is an active position named "Temp"
      And there is an inactive position named "Perm"
    When I go to the homepage
    Then I should see "Temp"
      And I should not see "Perm"
      
  Scenario: picking application type
    Given there is an active position named "Volunteer"
    When I go to the homepage
      And I follow "Apply"
    Then I should see "Application for 'Volunteer'"
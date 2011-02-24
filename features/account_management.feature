Feature: managing my account options

  Scenario: Managing my subscriptions
    Given I am logged in as an admin
    When I follow "My Account"
      And I check "Notify me of new applications"
      And I press "Save"
    Then I should be subscribed to application notifications
  
Feature: email waiting list for closed positions

  Scenario: leaving my email for a closed position
    Given there is an inactive position named "Training Bitch"
    When I go to the homepage 
      And I follow "Closed Positions"
    Then I should see "Training Bitch"
    When I follow "notify me when this position is open"
      And I fill in "ethan.vizitei@gmail.com" for "Email"
      And I press "Add me to the waiting list"
    Then I should see "You will receive an email at 'ethan.vizitei@gmail.com' when this position becomes open"
      And the position named "Training Bitch" should have "ethan.vizitei@gmail.com" in the waiting list 
      
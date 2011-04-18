Feature: managing the skills list for a position
  As a super-duper-admin
  I want to control the details of each positions skills
  In order to allow users to choose from skills for that position
    
  @javascript
  Scenario: Adding a new position with 3 skills
    Given I am logged in
    When I go to the positions index
      And I follow "add position"
      And I fill in "Temp" for "Name"
      And I fill in "ton of work for not much pay" for "Description"
      And I check "Active" 
      And I press "Add a Skill"
      And I fill in "Firefighter I" for "position[skills_attributes][0][name]"
      And I press "Add a Skill"
      And I fill in "Firefighter II" for "position[skills_attributes][1][name]"
      And I press "Add a Skill"
      And I fill in "EMT-B" for "position[skills_attributes][2][name]"
      And I press "Save"
    Then I should be on the positions index
      And the position "Temp" should have 3 skills
    
  @javascript  
  Scenario: removing a skill from a position
    Given I am logged in
      And there is a position named "Temp" with skills "FF I, FF II"
    When I go to the positions index
      And I follow "edit"
      And I follow "remove"
      And I press "Save"
    Then I should be on the positions index
      And the position "Temp" should have 1 skills
  
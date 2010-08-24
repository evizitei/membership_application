Feature: Membership Application
  As a member of the public
  I want to fill out an application
  In order to become a member of the organization
  
  Scenario: Filling out an application
    Given I am on the application page
    When I fill in "Name (Last)" with "Vizitei"
      And I fill in "(First)" with "Ethan"
      And I fill in "M.I." with "C"
      And I fill in "Social Security Number" with "123-45-6789"
      And I fill in "Address: (Street)" with "123 a street"
      And I fill in "(City)" with "Columbia"
      And I fill in "(State)" with "Mo"
      And I fill in "(Zip)" with "65203"
      And I fill in "Telephone Number: (Primary)" with "555-123-5678"
      And I fill in "(Secondary)" with "665-123-9067"
      And I fill in "E-mail:" with "ethan.vizitei@gmail.com"
      And I choose "membership_application_may_contact_at_work_true" within "[@id='work_contact']"
      And I press "Submit"
    Then I should see "Thanks for your application!"
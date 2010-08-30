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
      And I choose "membership_application_may_contact_at_work_true"
      And I fill in "Date of Birth:" with "08/09/1986"
      And I choose "membership_application_has_been_employed_under_alias_true"
      And I fill in "List Name(s):" with "E-Z-V, Viz"
      And I fill in "Driver's License Number:" with "L133244355466"
      And I fill in "State:" with "MO"
      And I fill in "Date of Expiration:" with "9/12/2013"
      And I choose "membership_application_has_crime_convictions_false"
      And I fill in "membership_application_crime_details" with ""
      And I choose "membership_application_has_traffic_violations_true"
      And I fill in "membership_application_traffic_violations_details" with "one pov fender bender"
      And I fill in "membership_application_employer_name" with "research 2 practice"
      And I fill in "membership_application_employer_phone" with "123-456-9876"
      And I fill in "membership_application_employer_start" with "3/12/2008"
      And I fill in "membership_application_employer_stop" with "5/15/2010"
      And I fill in "membership_application_employer_exit_reason" with "Not Yet"
      And I fill in "membership_application_employer_name_2" with "research 2 practice"
      And I fill in "membership_application_employer_phone_2" with "123-456-9876"
      And I fill in "membership_application_employer_start_2" with "3/12/2008"
      And I fill in "membership_application_employer_stop_2" with "5/15/2010"
      And I fill in "membership_application_employer_exit_reason_2" with "Not Yet"
      And I fill in "membership_application_employer_name_3" with "research 2 practice"
      And I fill in "membership_application_employer_phone_3" with "123-456-9876"
      And I fill in "membership_application_employer_start_3" with "3/12/2008"
      And I fill in "membership_application_employer_stop_3" with "5/15/2010"
      And I fill in "membership_application_employer_exit_reason_3" with "Not Yet"
      And I fill in "Branch:" with "Air Force"
      And I fill in "Rank at Discharge:" with "Sergent"
      And I fill in "Start Date:" with "08/01/2004"
      And I fill in "Discharge Date:" with "08/01/2010"
      And I fill in "Duties/Special Training:" with "things I did"
      And I fill in "Branch:" with "Air Force"
      And I fill in "Rank at Discharge:" with "Sergent"
      And I fill in "Start Date:" with "08/01/2004"
      And I fill in "Discharge Date:" with "08/01/2010"
      And I fill in "Duties/Special Training:" with "things I did"
      And I fill in "membership_application_high_school_name" with "Rock Bridge"
      And I fill in "membership_application_high_school_city" with "Columbia"
      And I fill in "membership_application_high_school_state" with "MO"
      And I fill in "membership_application_high_school_graduation_date" with "7/2004"
      And I fill in "membership_application_high_school_ged_date" with "N/A"
      And I press "Submit"
    Then I should see "Thanks for your application!"
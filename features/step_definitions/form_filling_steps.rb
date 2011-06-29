Given /^I fill out the login form$/ do
  And  %Q{I fill in "user_email" with "something@email.com"}
  And  %Q{I fill in "user_password" with "secret"}
end

When /^I fill out the membership form completely$/ do
 When %Q{I fill in "Name (Last)" with "Vizitei"}
  And %Q{I fill in "(First)" with "Ethan"}
  And %Q{I fill in "M.I." with "C"}
  And %Q{I fill in "Social Security Number" with "123-45-6789"}
  And %Q{I fill in "Address: (Street)" with "123 a street"}
  And %Q{I fill in "(City)" with "Columbia"}
  And %Q{I select "MO" from "(State)"}
  And %Q{I fill in "(Zip)" with "65203"}
  And %Q{I fill in "Telephone Number: (Primary)" with "555-123-5678"}
  And %Q{I fill in "(Secondary)" with "665-123-9067"}
  And %Q{I fill in "E-mail:" with "ethan.vizitei@gmail.com"}
  And %Q{I choose "membership_application_may_contact_at_work_true"}
  And %Q{I fill in "Date of Birth:" with "08/09/1986"}
  And %Q{I choose "membership_application_has_been_employed_under_alias_true"}
  And %Q{I fill in "List Name(s):" with "E-Z-V, Viz"}
  And %Q{I fill in "Driver's License Number:" with "L133244355466"}
  And %Q{I fill in "License Class:" with "C"}
  And %Q{I fill in "State:" with "MO"}
  And %Q{I fill in "Date of Expiration:" with "9/12/2013"}
  And %Q{I choose "membership_application_has_crime_convictions_false"}
  And %Q{I fill in "membership_application_crime_details" with ""}
  And %Q{I choose "membership_application_has_traffic_violations_true"}
  And %Q{I fill in "membership_application_traffic_violations_details" with "one pov fender bender"}
  And %Q{I fill in "membership_application_employer_name" with "research 2 practice"}
  And %Q{I fill in "membership_application_employer_position_held" with "Techie"}
  And %Q{I fill in "membership_application_employer_phone" with "123-456-9876"}
  And %Q{I fill in "membership_application_employer_start" with "3/12/2008"}
  And %Q{I fill in "membership_application_employer_stop" with "5/15/2010"}
  And %Q{I fill in "membership_application_employer_exit_reason" with "Not Yet"}
  And %Q{I fill in "membership_application_employer_name_2" with "research 2 practice"}
  And %Q{I fill in "membership_application_employer_position_held_2" with "Techie"}
  And %Q{I fill in "membership_application_employer_phone_2" with "123-456-9876"}
  And %Q{I fill in "membership_application_employer_start_2" with "3/12/2008"}
  And %Q{I fill in "membership_application_employer_stop_2" with "5/15/2010"}
  And %Q{I fill in "membership_application_employer_exit_reason_2" with "Not Yet"}
  And %Q{I fill in "membership_application_employer_name_3" with "research 2 practice"}
  And %Q{I fill in "membership_application_employer_position_held_3" with "Techie"}
  And %Q{I fill in "membership_application_employer_phone_3" with "123-456-9876"}
  And %Q{I fill in "membership_application_employer_start_3" with "3/12/2008"}
  And %Q{I fill in "membership_application_employer_stop_3" with "5/15/2010"}
  And %Q{I fill in "membership_application_employer_exit_reason_3" with "Not Yet"}
  And %Q{I fill in "Branch:" with "Air Force"}
  And %Q{I fill in "Rank at Discharge:" with "Sergent"}
  And %Q{I fill in "Start Date:" with "08/01/2004"}
  And %Q{I fill in "Discharge Date:" with "08/01/2010"}
  And %Q{I fill in "Duties/Special Training:" with "things I did"}
  And %Q{I fill in "Branch:" with "Air Force"}
  And %Q{I fill in "Rank at Discharge:" with "Sergent"}
  And %Q{I fill in "Start Date:" with "08/01/2004"}
  And %Q{I fill in "Discharge Date:" with "08/01/2010"}
  And %Q{I fill in "Duties/Special Training:" with "things I did"}
  And %Q{I fill in "membership_application_college_name" with "Truman"}
  And %Q{I fill in "membership_application_college_location" with "Kirksville, MO"}
  And %Q{I fill in "membership_application_college_start_date" with "8/16/2004"}
  And %Q{I fill in "membership_application_college_stop_date" with "3/15/2008"}
  And %Q{I fill in "membership_application_college_units_completed" with "40"}
  And %Q{I fill in "membership_application_college_major" with "Computer Science"}
  And %Q{I fill in "membership_application_college_degree" with "Bachelors"}
  And %Q{I fill in "membership_application_college_year" with "Junior"}
  And %Q{I fill in "membership_application_college_name_2" with "Truman"}
  And %Q{I fill in "membership_application_college_location_2" with "Kirksville, MO"}
  And %Q{I fill in "membership_application_college_units_completed_2" with "40"}
  And %Q{I fill in "membership_application_college_start_date_2" with "8/16/2004"}
  And %Q{I fill in "membership_application_college_stop_date_2" with "3/15/2008"}
  And %Q{I fill in "membership_application_college_major_2" with "Computer Science"}
  And %Q{I fill in "membership_application_college_degree_2" with "Bachelors"}
  And %Q{I fill in "membership_application_college_year_2" with "Junior"}
  And %Q{I fill in "membership_application_college_name_3" with "Truman"}
  And %Q{I fill in "membership_application_college_location_3" with "Kirksville, MO"}
  And %Q{I fill in "membership_application_college_units_completed_3" with "40"}
  And %Q{I fill in "membership_application_college_start_date_3" with "8/16/2004"}
  And %Q{I fill in "membership_application_college_stop_date_3" with "3/15/2008"}
  And %Q{I fill in "membership_application_college_major_3" with "Computer Science"}
  And %Q{I fill in "membership_application_college_degree_3" with "Bachelors"}
  And %Q{I fill in "membership_application_college_year_3" with "Junior"}
  And %Q{I fill in "membership_application_training_institution" with "School name"}
  And %Q{I fill in "membership_application_training_course" with "Class 1"}
  And %Q{I fill in "membership_application_training_start_date" with "08/09/1986"}
  And %Q{I fill in "membership_application_training_stop_date" with "09/08/1990"}
  And %Q{I fill in "membership_application_training_hours" with "54"}
  And %Q{I fill in "membership_application_training_institution_2" with "Other School"}
  And %Q{I fill in "membership_application_training_course_2" with "Class 2"}
  And %Q{I fill in "membership_application_training_start_date_2" with "07/13/2001"}
  And %Q{I fill in "membership_application_training_stop_date_2" with "07/15/2001"}
  And %Q{I fill in "membership_application_training_hours_2" with "12"}
  And %Q{I fill in "membership_application_certification_name" with "cert 1"}
  And %Q{I fill in "membership_application_certification_number" with "1234"}
  And %Q{I fill in "membership_application_certification_issuer" with "BCFPD"}
  And %Q{I fill in "membership_application_certification_expiration" with "08/09/2011"}
  And %Q{I fill in "membership_application_certification_name_2" with "cert 2"}
  And %Q{I fill in "membership_application_certification_number_2" with "4321"}
  And %Q{I fill in "membership_application_certification_issuer_2" with "CFD"}
  And %Q{I fill in "membership_application_certification_expiration_2" with "06/12/2012"}
  And %Q{I fill in "membership_application_certification_name_3" with "cert 3"}
  And %Q{I fill in "membership_application_certification_number_3" with "6543"}
  And %Q{I fill in "membership_application_certification_issuer_3" with "EMS"}
  And %Q{I fill in "membership_application_certification_expiration_3" with "09/12/4005"}
  And %Q{I fill in "membership_application_reason_for_joining" with "my whole life I've wanted to save lives and ride on big fire trucks.  I see this as my opportunity to do that without having to actually live with low pay and union wars."}
end
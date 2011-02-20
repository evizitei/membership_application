Given /^I am logged in$/ do
  @user = Factory(:user,:email=>"something@email.com",:password=>"secret")
  When %Q{I go to the login page}
  And %Q{I fill out the login form}
  And %Q{I press "Sign in"}
end

Given /^I am logged in as an admin$/ do
  Given %Q{I am logged in}
end


Then /^I should be rejected due to authentication$/ do
  Then %Q{I should see "Sign in"}
end

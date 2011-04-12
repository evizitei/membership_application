Then /^the position named "([^"]*)" should have "([^"]*)" in the waiting list$/ do |position_name, email|
  position = Position.find_by_name(position_name)
  position.waiting_list.should include(email)
end

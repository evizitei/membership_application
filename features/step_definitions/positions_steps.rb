Given /^there are positions named "([^"]*)"$/ do |names|
  names.split(",").map(&:strip).each_with_index do |name,idx|
    Factory(:position,:name=>name)
  end
end

Given /^there is a position named "([^"]*)"$/ do |name|
  Factory(:position,:name=>name)
end

Given /^there is an active position named "([^"]*)"$/ do |name|
  Factory(:position,:name=>name,:active=>true)
end

Given /^there is an inactive position named "([^"]*)"$/ do |name|
  Factory(:position,:name=>name,:active=>false)
end

Then /^the position "([^"]*)" should have (\d+) skills$/ do |name, count|
  position = Position.find_by_name(name)
  position.skills.size.should == count.to_i
end

Given /^there is a position named "([^"]*)" with skills "([^"]*)"$/ do |name, skills|
  position = Factory(:position,:name=>name,:active=>true)
  skills.split(",").map(&:strip).each do |skill|
    position.skills.create!(:name=>skill)
  end
end
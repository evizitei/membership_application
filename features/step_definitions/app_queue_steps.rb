Given /^there are no applications in the queue$/ do
  MembershipApplication.pending_review.each{|m| m.destroy}
end

Then /^there should be (\d+) application(?:|s) in the queue$/ do |count|
  count.to_i.times do
    Factory(:pending_app)
  end
end

Given /^there is one application in the queue for "([^"]*)"$/ do |name|
  first_name,last_name = name.split(/\s/)
  Factory(:pending_app,:first_name=>first_name,:last_name=>last_name)
end

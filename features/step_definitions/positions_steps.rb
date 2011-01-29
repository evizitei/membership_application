Given /^there are positions named "([^"]*)"$/ do |names|
  names.split(",").map(&:strip).each_with_index do |name,idx|
    Factory(:position,:name=>name)
  end
end

Given /^there is a position named "([^"]*)"$/ do |name|
  Factory(:position,:name=>name)
end

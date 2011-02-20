Factory.define :membership_application do |m|
  m.social_security_number "123456789"
  m.birth_date Date.strptime("1/23/1986","%m/%d/%Y")
  m.reason_for_joining "a set of words at least one hundred and fourty characters long that details why somebody wants to join the fire department, that's at least one tweet which shouldn't be that hard."
  m.has_crime_convictions true
end

Factory.define :pending_app,:parent=>:membership_application do |m|
  m.state "submitted"
end

Factory.define :user do |u|
end

Factory.define :position do |p|
  p.name "Some position name"
end

Factory.define :open_position,:parent=>:position do |p|
  p.active true
end

Factory.define :closed_position,:parent=>:position do |p|
  p.active false
end
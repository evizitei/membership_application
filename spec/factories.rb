Factory.define :membership_application do |m|
  m.social_security_number "123456789"
  m.birth_date Date.strptime("1/23/1986","%m/%d/%Y")
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
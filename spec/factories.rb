Factory.define :membership_application do |m|
  m.social_security_number "123456789"
  m.birth_date Date.strptime("1/23/1986","%m/%d/%Y")
end
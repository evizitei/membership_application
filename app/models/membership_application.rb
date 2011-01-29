class MembershipApplication < ActiveRecord::Base
  attr_encrypted :social_security_number, :key => 's8L3P4t569An83FM5o2569vfAxeY5gV6'
  
  validates_presence_of :social_security_number,:birth_date
  validates_format_of :social_security_number,:with=>/^\d{9}$/
  
  before_validation :format_ssn

protected 
  def format_ssn
    self.social_security_number= social_security_number.gsub(/[\s|-]+/,"") if social_security_number
  end
end

class MembershipApplication < ActiveRecord::Base
  belongs_to :position
  
  attr_encrypted :social_security_number, :key => 's8L3P4t569An83FM5o2569vfAxeY5gV6'
  
  validates_presence_of :social_security_number,:birth_date,:reason_for_joining
  validates_format_of :social_security_number,:with=>/^\d{9}$/
  validates_length_of :reason_for_joining, :minimum => 140, :too_short => "please enter at least %d characters"
  validates_inclusion_of :has_crime_convictions,:in=>[true,false]
  
  before_validation :format_ssn

protected 
  def format_ssn
    self.social_security_number= social_security_number.gsub(/[\s|-]+/,"") if social_security_number
  end
end

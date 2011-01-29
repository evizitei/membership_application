class MembershipApplication < ActiveRecord::Base
  validates_presence_of :social_security_number,:birth_date
  validates_numericality_of :social_security_number
  validates_length_of :social_security_number,:is=>9
  
  def social_security_number=(value)
    value = value.gsub(/[\s|-]+/,"") if value
    write_attribute(:social_security_number,value)
  end
end

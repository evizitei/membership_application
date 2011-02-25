require 'transitions'

class MembershipApplication < ActiveRecord::Base
  include ActiveRecord::Transitions
  
  belongs_to :position
  
  attr_encrypted :social_security_number, :key => 's8L3P4t569An83FM5o2569vfAxeY5gV6'
  
  validates_presence_of :social_security_number,:birth_date,:reason_for_joining
  validates_format_of :social_security_number,:with=>/^\d{9}$/
  validates_length_of :reason_for_joining, :minimum => 140, :too_short => "please enter at least %d characters"
  validates_inclusion_of :has_crime_convictions,:in=>[true,false]
  
  before_validation :format_ssn
  
  state_machine do
    state :filling_out 
    state :submitted, :enter => lambda {|app| NotificationsMailer.new_application(app).deliver }
    state :reviewed

    event :submit do
      transitions :to => :submitted, :from => :filling_out
    end
     
  end
  
  class << self
    def pending_review
      where(:state=>"submitted")
    end
  end

  def applicant_name
    "#{first_name} #{last_name}"
  end
protected 
  def format_ssn
    self.social_security_number= social_security_number.gsub(/[\s|-]+/,"") if social_security_number
  end
end

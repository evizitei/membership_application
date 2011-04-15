require 'transitions'

class MembershipApplication < ActiveRecord::Base
  include ActiveRecord::Transitions
  
  belongs_to :position
  
  attr_encrypted :social_security_number, :key => 's8L3P4t569An83FM5o2569vfAxeY5gV6'
  
  validates_presence_of :social_security_number,:birth_date,:reason_for_joining
  validates_format_of :social_security_number,:with=>/^\d{9}$/
  validates_length_of :reason_for_joining, :minimum => 140, :too_short => "should have at least 140 characters"
  validates_inclusion_of :has_crime_convictions,:in=>[true,false], :message => "is required"
  
  before_validation :format_ssn
  
  has_attached_file :printable_pdf,:storage => :s3,
                                   :s3_credentials => "#{Rails.root.to_s}/config/s3.yml",
                                   :s3_permissions => :public_read,
                                   :path => ":attachment/:style/:id.:extension"
  
  state_machine do
    state :filling_out 
    state :submitted, :enter => lambda {|app| NotificationsMailer.new_application(app).deliver }
    state :reviewed

    event :submit do
      transitions :to => :submitted, :from => [:filling_out,:reviewed,:submitted]
    end
     
    event :review do
      transitions :to => :reviewed,:from=>:submitted
    end
  end
  
  class << self
    def pending_review
      where(:state=>"submitted")
    end
    
    def for_ssn(ssn)
      ssn = ssn.gsub(/[\s|-]+/,"")
      find_all_by_social_security_number(ssn)
    end
  end

  def applicant_name
    "#{first_name} #{last_name}"
  end
  
  def send_to_pdf
    html = build_html
    pdf = create_pdf_from(html)
    self.printable_pdf = pdf
    self.save!
  end
  
protected 
  def format_ssn
    self.social_security_number= social_security_number.gsub(/[\s|-]+/,"") if social_security_number
  end
  
  def build_html
    template = File.open(File.join(Rails.root,"app","views","membership_applications","show.html.haml"),"r")
    engine = Haml::Engine.new(template.read)
    engine.render(Object.new, :@position => self.position, :@membership_application => self)
  end
  
  def create_pdf_from(html)
    kit = PDFKit.new(html, :page_size => 'Letter')
    kit.stylesheets << File.join(Rails.root,"public","stylesheets","application.css")
    kit.to_file(File.join(Rails.root,"tmp","application_#{self.id}.pdf"))
  end
end
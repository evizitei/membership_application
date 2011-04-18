class Position < ActiveRecord::Base
  has_many :membership_applications
  has_many :waiting_list_records
  has_many :skills
  
  accepts_nested_attributes_for :skills
  
  validates_presence_of :name
  
  class << self
    def open
      where(:active=>true)
    end
    
    def closed
      where(["active != ?",true])
    end
  end
  
  def waiting_list
    waiting_list_records.map(&:email)
  end
  
  def open!
    self.update_attributes!(:active=>true)
  end
  
  def open_and_notify!
    open!
    self.delay.notify!
  end
  
protected
  def notify!
    NotificationsMailer.open_position(self).deliver
  end
end

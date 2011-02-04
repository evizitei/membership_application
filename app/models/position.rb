class Position < ActiveRecord::Base
  has_many :membership_applications
  validates_presence_of :name
  
  class << self
    def open
      where(:active=>true)
    end
  end
end

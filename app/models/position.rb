class Position < ActiveRecord::Base
  validates_presence_of :name
  
  class << self
    def open
      where(:active=>true)
    end
  end
end

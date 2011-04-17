class WelcomeController < ApplicationController
  layout "nifty"
  
  def index
    @positions = Position.open.all
  end
end

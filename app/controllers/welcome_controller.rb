class WelcomeController < ApplicationController
  def index
    @positions = Position.open.all
  end
end

class PositionsController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @positions = Position.all
  end
  
  def new
    @position = Position.new
  end
  
  def create
    @position = Position.new(params[:position])
    if @position.save
      redirect_to positions_path
    else
      render :action=>:new
    end
  end
  
  def edit
    @position = Position.find(params[:id])
  end
  
  def update
    @position = Position.find(params[:id])
    if @position.update_attributes(params[:position])
      redirect_to positions_path
    else
      render :action=>:edit
    end
  end
end

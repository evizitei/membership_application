class PositionsController < ApplicationController
  layout "nifty"
  before_filter :authenticate_user!,:except=>[:closed]
  
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
  
  def closed
    @positions = Position.closed
  end
  
  def force_open
    @position = Position.find(params[:position_id])
    if(params[:notify] == "yes")
      @position.open_and_notify!
    else
      @position.open!
    end
    redirect_to :action=>:index
  end
  
  def force_close
    @position = Position.find(params[:position_id])
    @position.close!
    redirect_to :action=>:index
  end
end

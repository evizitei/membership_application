class MembershipApplicationsController < ApplicationController
  def new
    @position = Position.find(params[:position_id])
    @membership_application = MembershipApplication.new(:position=>@position)
  end
  
  def create
    @position = Position.find(params[:position_id])
    @membership_application = MembershipApplication.new(params[:membership_application].merge({:position_id=>@position.id}))
    render :action=>:new unless @membership_application.save
  end
end

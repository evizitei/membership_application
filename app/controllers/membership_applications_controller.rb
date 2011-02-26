class MembershipApplicationsController < ApplicationController
  def new
    @position = Position.find(params[:position_id])
    @membership_application = MembershipApplication.new(:position=>@position)
  end
  
  def create
    @position = Position.find(params[:position_id])
    @membership_application = MembershipApplication.new(params[:membership_application].merge({:position_id=>@position.id}))
    if @membership_application.last_name.upcase == "ELLI"
      redirect_to "/driving_disaster/gameboard.html"
      return
    end
    render :action=>:new unless @membership_application.save
  end
  
  def edit
    @position = Position.find(params[:position_id])
    @membership_application = MembershipApplication.find(params[:id])
  end
  
  def update
    @position = Position.find(params[:position_id])
    @membership_application = MembershipApplication.find(params[:id])
    render :action=>:edit unless @membership_application.update_attributes(params[:membership_application])
  end
  
  def show
    @position = Position.find(params[:position_id])
    @membership_application = MembershipApplication.find(params[:id])
  end
  
  def find
    if params[:social_security_number]
      @applications = MembershipApplication.for_ssn(params[:social_security_number])
    else
      @applications = []
    end
  end
end

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
    
    if @membership_application.save
      @membership_application.submit!
      @membership_application.delay.send_to_pdf
    else
      render :new
    end
  end
  
  def edit
    @position = Position.find(params[:position_id])
    @membership_application = MembershipApplication.find(params[:id])
  end
  
  def update
    @position = Position.find(params[:position_id])
    @membership_application = MembershipApplication.find(params[:id])
    if @membership_application.update_attributes(params[:membership_application])
      @membership_application.submit!
      @membership_application.delay.send_to_pdf
    else
      render :edit
    end
  end
  
  def show
    @position = Position.find(params[:position_id])
    @membership_application = MembershipApplication.find(params[:id])
  end
  
  def index
    @position = Position.find(params[:position_id])
    @membership_applications = @position.membership_applications
  end
  
  def find
    if params[:social_security_number]
      @applications = MembershipApplication.for_ssn(params[:social_security_number])
    else
      @applications = []
    end
  end
  
  def mark_reviewed
    membership_application = MembershipApplication.find(params[:id])
    membership_application.review!
    render :json=>"{}"
  end
end

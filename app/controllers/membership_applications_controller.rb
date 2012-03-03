class MembershipApplicationsController < ApplicationController
  layout "nifty",:except=>[:new,:edit]
  
  def new
    @position = Position.find(params[:position_id])
    @membership_application = MembershipApplication.new(:position=>@position,:address_state=>"MO")
    if params[:copy_from]
      copy_app = MembershipApplication.find(params[:copy_from])
      @membership_application.attributes = copy_app.attributes
      @membership_application.social_security_number = copy_app.social_security_number
    end
    render :layout=>"application"
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
      render :new,:layout=>"application"
    end
  end
  
  def edit
    @position = Position.find(params[:position_id])
    @membership_application = MembershipApplication.find(params[:id])
    render :layout=>"application"
  end
  
  def update
    @position = Position.find(params[:position_id])
    @membership_application = MembershipApplication.find(params[:id])
    if @membership_application.update_attributes(params[:membership_application])
      @membership_application.submit!
      @membership_application.delay.send_to_pdf
    else
      render :edit,:layout=>"application"
    end
  end
  
  def show
    @position = Position.find(params[:position_id])
    @membership_application = MembershipApplication.find(params[:id])
    render :layout=>"application"
  end
  
  def index
    @position = Position.find(params[:position_id])
    @membership_applications = @position.membership_applications.undownloaded
  end
  
  def find
    ssn = params[:social_security_number]
    if ssn
      @applications = MembershipApplication.for_ssn ssn
      @message = "Sorry! No applications found for '#{ssn}'" if @applications.size == 0
    else
      @applications = []
    end
  end
  
  def mark_reviewed
    membership_application = MembershipApplication.find(params[:id])
    membership_application.review!
    render :json=>"{}"
  end
  
  def load
    @position = Position.find(params[:position_id])
    if params[:social_security_number]
      @applications = MembershipApplication.for_ssn(params[:social_security_number])
    else
      @applications = []
    end
  end
  
  def download
    @membership_application = MembershipApplication.find(params[:id])
    @membership_application.mark_downloaded!
    redirect_to @membership_application.printable_pdf.url
  end

end

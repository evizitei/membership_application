class MembershipApplicationsController < ApplicationController
  def new
    @membership_application = MembershipApplication.new
  end
  
  def create
    @membership_application = MembershipApplication.new(params[:membership_application])
    render :action=>:new unless @membership_application.save
  end
end

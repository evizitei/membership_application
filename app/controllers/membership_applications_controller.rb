class MembershipApplicationsController < ApplicationController
  def new
    @membership_application = MembershipApplication.new
  end
  
  def create
    @membership_application = MembershipApplication.create!(params[:membership_application])
  end
end

class UsersController < ApplicationController
  layout "nifty"
  
  def edit
    @user = current_user
  end
  
  def update
    @user = current_user
    if @user.update_attributes(params[:user])
      redirect_to root_path
    else
      render :action=>:edit
    end
  end
end
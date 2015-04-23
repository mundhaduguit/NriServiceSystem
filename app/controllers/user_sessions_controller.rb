class UserSessionsController < ApplicationController
 before_filter :require_user, :only => :destroy
 layout false
  def new
    @user_session = UserSession.new
  end

  def create
    @user_session = UserSession.new(params[:user_session])
    if @user_session.save
      flash[:notice] = "Login successful!#{@user_session.user}"
      if @user_session.user.has_role? :admin
        redirect_to admin_home_index_url
      else
        redirect_back_or_default account_url(@current_user)
      end
    else
      render :action => :new
    end
  end

  def destroy
    current_user_session.destroy
    flash[:notice] = "Logout successful!"
    redirect_back_or_default home_url
  end
end

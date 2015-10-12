class SessionsController < ApplicationController

  def new #login page
  end

  def create #create the login session
    user = User.find_by_username(params[:username])
    if user.present? && user.authenticate(params[:password])
      session[:logged_in_user] = user.id
      redirect_to user, notice: "Successfully logged in."
    else
      flash[:alert] = "Username or Password did not match."
      render :new
    end
  end

  def destroy #delete the login session
    session[:logged_in_user] = nil
    redirect_to root_path, notice: "Successfully logged out."
  end

end

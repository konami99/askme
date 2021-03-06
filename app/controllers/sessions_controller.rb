class SessionsController < ApplicationController
  skip_before_action :authorize, only: [:create, :destroy]

  def new
  end

  def create
    user = User.find_by(username: params[:signin_username])
    if user and user.authenticate(params[:signin_password])
      session[:user_id] = user.id
      session[:username] = user.username
      redirect_to root_path, notice: "Welcome back, #{session[:username]}"
    else
      redirect_to root_path, alert: "Invalid user/password combination"
    end
  end

  def destroy
    session[:user_id] = nil
    session[:username] = nil
    redirect_to root_path
    #respond_to do |format|
      #format.html { redirect_to root_path }

    #end
  end
end

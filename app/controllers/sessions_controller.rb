class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(username: params[:])
  end

  def destroy
    session[:user_id] = nil
    session[:username] = nil
    respond_to do |format|
      format.html { redirect_to root_path }

    end
  end
end

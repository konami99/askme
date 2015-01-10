class SessionsController < ApplicationController
  def new
  end

  def create
  end

  def destroy
    session[:user_id] = nil
    session[:username] = nil
    respond_to do |format|
      format.html { redirect_to root_path }

    end
  end
end

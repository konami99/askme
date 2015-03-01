class ApplicationController < ActionController::Base
  before_action :authorize
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected
    def authorize
      unless User.find_by(id: session[:user_id])
        respond_to do |format|
          format.json {
            render 'authorize.js'
          }
          format.html {
            redirect_to signin_page_path, notice: 'Please log in'
          }
        end
      end
    end
end

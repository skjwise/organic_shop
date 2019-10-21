class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
    helper_method :current_user, :authorize_user
    
    def current_user
        if session[:user_id]
        User.find(session[:user_id])
        end
    end

  def authorize_user
    if !current_user
        flash[:notice] = "Please login to shop"
        redirect_to '/login'
        end
    end

end

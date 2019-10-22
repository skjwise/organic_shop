class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
    helper_method :current_user, :authorize_user, :current_cart
    # add_flash_types :error, :notice
    
    def current_user
      # byebug
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

    def current_cart
      session[:cart] ||= []
    end

  end

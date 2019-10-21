class SessionsController < ApplicationController
  
    def new
    end
  
    def create
    # byebug
    @user = User.find_by(email: params[:user][:email])
    # byebug
    if @user && @user.authenticate(params[:user][:password])
        session[:user_id] = @user.id
        redirect_to sellers_path
        
    else 
        flash[:notice] = "Sorry, these user details does not exists"
        redirect_to new_session_path
      end
  end
  
    def destroy
      session.destroy
      redirect_to new_session_path, notice: 'You have been logged out!'
    end

end

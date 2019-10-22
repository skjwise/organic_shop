class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    # byebug
    if @user.valid?
      session[:user_id] = @user.id
      redirect_to sellers_path
    else 
      render :new
    end
  end

  def show
    @user = find_user
  end

  def edit
    @user = find_user
  end

  def update
    @user = find_user
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  def destroy
    @user = find_user
    @user.destroy
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end

  def find_user 
    User.find(params[:id])
  end

end

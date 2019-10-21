class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      redirect_to user_path(@user)
    else 
      render :new
    end
  end

  def show
    find_user
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

  def user_params(*args)
    params.require(:user).permit(*args)
  end

  def find_user 
    User.find(params[:id])
  end

end

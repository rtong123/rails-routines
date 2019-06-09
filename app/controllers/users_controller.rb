require 'pry'
class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find_by(id: params[:id])
    #want to show current users info.
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
    redirect_to user_path(@user)
  else
    flash[:error] = "Username has been used."
    redirect_to new_user_path
  end
  end

  def index
    @users = User.all
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :full_name, :bio)
  end

end

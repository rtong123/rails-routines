require 'pry'
class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    binding.pry
    if logged_in?
    @user = User.find_by(params[:id])
    #want to show current users info.
    else
      redirect_to '/'
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
    redirect_to user_path(@user)
  else
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

class UsersController < ApplicationController

  

  def new
    @user = User.new
  end

  def show
    @user = User.find_by(params[:id])
  end

  def create
    @user = User.create(user_params)
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :bio)
  end

end

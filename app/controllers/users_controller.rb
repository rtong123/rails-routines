class UsersController < ApplicationController

  def home
    render "layouts/application"
  end

  def show
  end

  def create
    @user = User.create(user_params)
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :bio)
  end

end

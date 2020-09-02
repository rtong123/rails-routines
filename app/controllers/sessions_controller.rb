require 'pry'
class SessionsController < ApplicationController

  def new
  end

 #  def create
 #     user = User.find_by(username: params[:username])
 #   if user && user.authenticate(params[:password])
 #     session[:user_id] = user.id
 #     redirect_to user_path(user.id)
 #   else
 #    flash[:error] = "Sorry, we could not find the combination, try again or signup."
 #     redirect_to '/users/new'
 #   end
 # end

  def destroy
    session.clear
    redirect_to '/'
  end

#   def create
#   if user = User.find_by(username: params[:username])
#     user && user.authenticate(params[:password])
#       session[:user_id] = user.id
#       redirect_to user_path(user.id)
#   else
#      flash[:error] = "Sorry, we could not find the combination, try again or signup."
#       redirect_to '/users/new'
#     end
#   user = User.find_or_create_by(uid: auth['uid']) do |u|

#       u.name = auth['info']['name']
#       u.email = auth['info']['email']
#       u.image = auth['info']['image']
#     session[:user_id] = user.id
#     render 'users/show'
#   end
# end

def create
user = User.find_by(username: params[:username])
  if user && user.authenticate(params[:password])
    # session[:user_id] = user.id
    
    redirect_to user_path(user.id)
  else
   flash[:error]='Sorry, we could not find the combination, try again or signup.'
    redirect_to '/users/new'
  end

  user = User.find_or_create_by(uid: auth[‘uid’]) do |u|
    binding.pry
    u.name = auth[‘info’][‘name’]
    u.email = auth[‘info’][‘email’]
    u.image = auth[‘info’][‘image’]
  end
  
  session[:user_id] = user.id
  render 'users/show'

end

  private

  def auth
    request.env['omniauth.auth']
  end
end
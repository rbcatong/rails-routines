require 'pry'
class SessionsController < ApplicationController

  def new
  end

  def create
     @user = User.find_by(username: params[:username])
   if @user && @user.authenticate(params[:password])
     session[:user_id] = @user.id
     redirect_to '/users'
   else
     redirect_to '/users/new'
   end
 end

  def destroy
    session.clear
    redirect_to '/'
  end

end

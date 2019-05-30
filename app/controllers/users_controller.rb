require 'pry'
class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find_by(params[:id])
  end

  def create
    @user = User.create(user_params)
    redirect_to user_path(@user)
  end

  def index
    @users = User.all
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :bio)
  end

end

class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
  end

  def create
    p "======== HERE'S THE PARAMS! ========="
    p params
    @user = User.create(params[:user])
    redirect_to user_path(@user)
  end


end

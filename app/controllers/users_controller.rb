class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
  end

  def create
    @user = User.create(params[:user])
    redirect_to user_path(@user)
  end

  def show
  end

  def edit
  end 

  def update
  end

  def destroy
  end


end

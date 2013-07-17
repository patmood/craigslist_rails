class SessionsController < ApplicationController

  def new
    #render form
  end

  def create
    session[:user_id] = User.find_by_email(params[:user][:email]).authenticate(params[:user][:password])
    redirect_to categories_path
  end

  def destroy
    session.clear
    redirect_to categories_path
  end

end

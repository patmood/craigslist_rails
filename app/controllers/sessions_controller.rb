class SessionsController < ApplicationController

  def create
    session[:user_id] = User.find_by_email(params[:user][:email]).authenticate(params[:user][:password])
  end

  def destroy
    session.clear
  end

end
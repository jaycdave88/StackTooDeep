class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:notice] = "Logged In"
      redirect_to root_url
    else
      flash[:notice] = "Invalid email or password"
      render "new"
    end
  end

  def show
    session[:user_id] = nil
    flash[:notice] = "Logged Out"
    redirect_to root_url
  end

end
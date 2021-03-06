class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_username(params[:username].downcase)
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url, notice: "Logged in!"
    else
      flash[:notice] = 'Username or Password incorrect'
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged out!"
  end
end

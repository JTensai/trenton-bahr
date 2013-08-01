class UsersController < ApplicationController
  
  before_filter :authorize_check

  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
	  session[:user_id] = @user.id
      redirect_to database_path, notice: "Thank you for signing up!"
    else
      render "new"
    end
  end

  def authorize_check
    if User.first == nil
      flash[:notice] = "There are no users!"
    else
      redirect_to login_url, notice: "You must be logged in to do that" if current_user.nil?
    end
  end


end

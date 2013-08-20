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

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to root_path, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
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

class SessionInfosController < ApplicationController
  before_filter :authorize

  # GET /session_infos/new
  # GET /session_infos/new.json
  def new
    @session_info = SessionInfo.new
    @downloads = Download.all(order: 'name')

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @session_info }
    end
  end

  # GET /session_infos/1/edit
  def edit
    @session_info = SessionInfo.first
    @downloads = Download.all(order: 'name')
  end

  # POST /session_infos
  # POST /session_infos.json
  def create
    @session_info = SessionInfo.new(params[:session_info])

    respond_to do |format|
      if @session_info.save
        format.html { redirect_to session_information_path, notice: 'Session Info was successfully set up!' }
        format.json { render json: @session_info, status: :created, location: @session_info }
      else
        format.html { render action: "new" }
        format.json { render json: @session_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /session_infos/1
  # PUT /session_infos/1.json
  def update
    @session_info = SessionInfo.first

    respond_to do |format|
      if @session_info.update_attributes(params[:session_info])
        format.html { redirect_to session_information_path, notice: 'Session Info was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @session_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /session_infos/1
  # DELETE /session_infos/1.json
  def destroy
    @session_info = SessionInfo.first
    @session_info.destroy

    respond_to do |format|
      format.html { redirect_to session_infos_url }
      format.json { head :no_content }
    end
  end
end

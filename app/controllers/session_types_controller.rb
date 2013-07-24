class SessionTypesController < ApplicationController
  # GET /session_types
  # GET /session_types.json
  def index
    @session_types = SessionType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @session_types }
    end
  end

  # GET /session_types/1
  # GET /session_types/1.json
  def show
    @session_type = SessionType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @session_type }
    end
  end

  # GET /session_types/new
  # GET /session_types/new.json
  def new
    @session_type = SessionType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @session_type }
    end
  end

  # GET /session_types/1/edit
  def edit
    @session_type = SessionType.find(params[:id])
  end

  # POST /session_types
  # POST /session_types.json
  def create
    @session_type = SessionType.new(params[:session_type])

    respond_to do |format|
      if @session_type.save
        format.html { redirect_to @session_type, notice: 'Session type was successfully created.' }
        format.json { render json: @session_type, status: :created, location: @session_type }
      else
        format.html { render action: "new" }
        format.json { render json: @session_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /session_types/1
  # PUT /session_types/1.json
  def update
    @session_type = SessionType.find(params[:id])

    respond_to do |format|
      if @session_type.update_attributes(params[:session_type])
        format.html { redirect_to @session_type, notice: 'Session type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @session_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /session_types/1
  # DELETE /session_types/1.json
  def destroy
    @session_type = SessionType.find(params[:id])
    @session_type.destroy

    respond_to do |format|
      format.html { redirect_to session_types_url }
      format.json { head :no_content }
    end
  end
end

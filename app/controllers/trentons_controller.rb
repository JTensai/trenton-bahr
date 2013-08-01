class TrentonsController < ApplicationController
  before_filter :authorize

  # GET /trentons/new
  # GET /trentons/new.json
  def new
    @trenton = Trenton.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @trenton }
    end
  end

  # GET /trentons/1/edit
  def edit
    @trenton = Trenton.first
  end

  # POST /trentons
  # POST /trentons.json
  def create
    @trenton = Trenton.new(params[:trenton])

    respond_to do |format|
      if @trenton.save
        format.html { redirect_to about_path, notice: 'Page successfully set up!' }
        format.json { render json: @trenton, status: :created, location: @trenton }
      else
        format.html { render action: "new" }
        format.json { render json: @trenton.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /trentons/1
  # PUT /trentons/1.json
  def update
    @trenton = Trenton.first

    respond_to do |format|
      if @trenton.update_attributes(params[:trenton])
        format.html { redirect_to about_path, notice: 'Page was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @trenton.errors, status: :unprocessable_entity }
      end
    end
  end
end

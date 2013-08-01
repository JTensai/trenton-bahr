class OurCharitiesController < ApplicationController
  before_filter :authorize
  # GET /our_charities
  # GET /our_charities.json
  def index
    @our_charities = OurCharity.all(order: 'sort_order')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @our_charities }
    end
  end

  # GET /our_charities/1
  # GET /our_charities/1.json
  def show
    @our_charity = OurCharity.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @our_charity }
    end
  end

  # GET /our_charities/new
  # GET /our_charities/new.json
  def new
    @our_charity = OurCharity.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @our_charity }
    end
  end

  # GET /our_charities/1/edit
  def edit
    @our_charity = OurCharity.find(params[:id])
  end

  # POST /our_charities
  # POST /our_charities.json
  def create
    @our_charity = OurCharity.new(params[:our_charity])

    respond_to do |format|
      if @our_charity.save
        format.html { redirect_to @our_charity, notice: 'Our charity was successfully created.' }
        format.json { render json: @our_charity, status: :created, location: @our_charity }
      else
        format.html { render action: "new" }
        format.json { render json: @our_charity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /our_charities/1
  # PUT /our_charities/1.json
  def update
    @our_charity = OurCharity.find(params[:id])

    respond_to do |format|
      if @our_charity.update_attributes(params[:our_charity])
        format.html { redirect_to @our_charity, notice: 'Our charity was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @our_charity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /our_charities/1
  # DELETE /our_charities/1.json
  def destroy
    @our_charity = OurCharity.find(params[:id])
    @our_charity.destroy

    respond_to do |format|
      format.html { redirect_to our_charities_url }
      format.json { head :no_content }
    end
  end
end

class CharityOfTheMonthsController < ApplicationController

  # GET /charity_of_the_months/new
  # GET /charity_of_the_months/new.json
  def new
    @charity = CharityOfTheMonth.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @charity }
    end
  end

  # GET /charity_of_the_months/1/edit
  def edit
    @charity = CharityOfTheMonth.first
  end

  # POST /charity_of_the_months
  # POST /charity_of_the_months.json
  def create
    @charity = CharityOfTheMonth.new(params[:charity_of_the_month])

    respond_to do |format|
      if @charity_of_the_month.save
        format.html { redirect_to charities_path, notice: 'Charity of the Month was successfully created.' }
        format.json { render json: @charity, status: :created, location: @charity }
      else
        format.html { render action: "new" }
        format.json { render json: @charity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /charity_of_the_months/1
  # PUT /charity_of_the_months/1.json
  def update
    @charity = CharityOfTheMonth.first

    respond_to do |format|
      if @charity.update_attributes(params[:charity_of_the_month])
        format.html { redirect_to charities_path, notice: 'Charity of the Month was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @charity.errors, status: :unprocessable_entity }
      end
    end
  end

end

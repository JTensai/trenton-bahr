class RotatingImagesController < ApplicationController
  # GET /rotating_images
  # GET /rotating_images.json
  def index
    @live_images = RotatingImage.where(live: true).all(order: "sort_order")
    @rotating_images = RotatingImage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rotating_images }
    end
  end

  # GET /rotating_images/1
  # GET /rotating_images/1.json
  def show
    @rotating_image = RotatingImage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rotating_image }
    end
  end

  # GET /rotating_images/new
  # GET /rotating_images/new.json
  def new
    @rotating_image = RotatingImage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rotating_image }
    end
  end

  # GET /rotating_images/1/edit
  def edit
    @rotating_image = RotatingImage.find(params[:id])
  end

  # POST /rotating_images
  # POST /rotating_images.json
  def create
    @rotating_image = RotatingImage.new(params[:rotating_image])

    respond_to do |format|
      if @rotating_image.save
        format.html { redirect_to @rotating_image, notice: 'Create rotating image was successfully created.' }
        format.json { render json: @rotating_image, status: :created, location: @rotating_image }
      else
        format.html { render action: "new" }
        format.json { render json: @rotating_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rotating_images/1
  # PUT /rotating_images/1.json
  def update
    @rotating_image = RotatingImage.find(params[:id])

    respond_to do |format|
      if @rotating_image.update_attributes(params[:rotating_image])
        format.html { redirect_to @rotating_image, notice: 'Create rotating image was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @rotating_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rotating_images/1
  # DELETE /rotating_images/1.json
  def destroy
    @rotating_image = RotatingImage.find(params[:id])
    @rotating_image.destroy

    respond_to do |format|
      format.html { redirect_to rotating_images_url }
      format.json { head :no_content }
    end
  end
end

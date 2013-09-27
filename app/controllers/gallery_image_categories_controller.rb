class GalleryImageCategoriesController < ApplicationController
  # GET /gallery_image_categories
  # GET /gallery_image_categories.json
  def index
    @gallery_image_categories = GalleryImageCategory.all(order: :sort_order)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @gallery_image_categories }
    end
  end

  # GET /gallery_image_categories/new
  # GET /gallery_image_categories/new.json
  def new
    @gallery_image_category = GalleryImageCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @gallery_image_category }
    end
  end

  # GET /gallery_image_categories/1/edit
  def edit
    @gallery_image_category = GalleryImageCategory.find(params[:id])
  end

  # POST /gallery_image_categories
  # POST /gallery_image_categories.json
  def create
    @gallery_image_category = GalleryImageCategory.new(params[:gallery_image_category])

    respond_to do |format|
      if @gallery_image_category.save
        format.html { redirect_to gallery_image_categories_path, notice: 'Gallery image category was successfully created.' }
        format.json { render json: gallery_image_categories_path, status: :created, location: @gallery_image_category }
      else
        format.html { render action: "new" }
        format.json { render json: @gallery_image_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /gallery_image_categories/1
  # PUT /gallery_image_categories/1.json
  def update
    @gallery_image_category = GalleryImageCategory.find(params[:id])

    respond_to do |format|
      if @gallery_image_category.update_attributes(params[:gallery_image_category])
        format.html { redirect_to gallery_image_categories_path, notice: 'Gallery image category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @gallery_image_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gallery_image_categories/1
  # DELETE /gallery_image_categories/1.json
  def destroy
    @gallery_image_category = GalleryImageCategory.find(params[:id])
    @gallery_image_category.destroy

    respond_to do |format|
      format.html { redirect_to gallery_image_categories_url }
      format.json { head :no_content }
    end
  end
end

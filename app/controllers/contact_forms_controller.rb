class ContactFormsController < ApplicationController
  before_filter :authorize
  # GET /contact_forms
  # GET /contact_forms.json
  def index
    @contact_forms = ContactForm.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @contact_forms }
    end
  end

  # GET /contact_forms/1
  # GET /contact_forms/1.json
  def show
    @contact_form = ContactForm.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @contact_form }
    end
  end

  # GET /contact_forms/new
  # GET /contact_forms/new.json
  def new
    @contact_form = ContactForm.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @contact_form }
    end
  end

  # GET /contact_forms/1/edit
  def edit
    @contact_form = ContactForm.find(params[:id])

  end

  # POST /contact_forms
  # POST /contact_forms.json
  def create
    @contact_form = ContactForm.new(params[:contact_form])

    respond_to do |format|
      if @contact_form.save
        if params["origin"] == "contact_page"
          format.html { redirect_to contact_path, notice: 'Thank you, your request has been submitted' }
        elsif params["origin"] == "front_page"
          format.html { redirect_to root_path, notice: 'Thank you, your request has been submitted' }
        elsif params["origin"] == "contact_forms/new"
          format.html { redirect_to @contact_form, notice: 'Contact Form Created' }
        end

      else
        format.html { render action: "new" }
        format.json { render json: @contact_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /contact_forms/1
  # PUT /contact_forms/1.json
  def update
    @contact_form = ContactForm.find(params[:id])

    respond_to do |format|
      if @contact_form.update_attributes(params[:contact_form])
        format.html { redirect_to @contact_form, notice: 'Contact form was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @contact_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contact_forms/1
  # DELETE /contact_forms/1.json
  def destroy
    @contact_form = ContactForm.find(params[:id])
    @contact_form.destroy

    respond_to do |format|
      format.html { redirect_to contact_forms_url }
      format.json { head :no_content }
    end
  end
end

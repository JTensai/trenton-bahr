class NewsletterSubscriptionsController < ApplicationController
  # GET /newsletter_email_lists
  # GET /newsletter_email_lists.json
  def index
    @newsletter_subscriptions = NewsletterSubscription.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @newsletter_subscription }
    end
  end

  # GET /newsletter_email_lists/new
  # GET /newsletter_email_lists/new.json
  def new
    @newsletter_subscription = NewsletterSubscription.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @newsletter_subscription }
    end
  end

  # GET /newsletter_email_lists/1/edit
  def edit
    @newsletter_subscription = NewsletterSubscription.find(params[:id])
  end

  # POST /newsletter_email_lists
  # POST /newsletter_email_lists.json
  def create
    @newsletter_subscription = NewsletterSubscription.new(params[:newsletter_subscription])

    respond_to do |format|
      if @newsletter_subscription.save
        if params["origin"] == "front_page"
          format.html { redirect_to root_path, notice: 'Thank you, Subscription Received' }
        else
          format.html { redirect_to newsletter_subscriptions_path, notice: 'Subscription Created' }
        end
      else
        format.html { render action: "new" }
        format.json { render json: @newsletter_subscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /newsletter_email_lists/1
  # PUT /newsletter_email_lists/1.json
  def update
    @newsletter_subscription = NewsletterSubscription.find(params[:id])

    respond_to do |format|
      if @newsletter_subscription.update_attributes(params[:newsletter_subscription])
        format.html { redirect_to newsletter_subscriptions_path, notice: 'Subscription was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @newsletter_subscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /newsletter_email_lists/1
  # DELETE /newsletter_email_lists/1.json
  def destroy
    @newsletter_subscription = NewsletterSubscription.find(params[:id])
    @newsletter_subscription.destroy

    respond_to do |format|
      format.html { redirect_to newsletter_subscriptions_url }
      format.json { head :no_content }
    end
  end
end

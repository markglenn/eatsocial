class SubscriptionsController < ApplicationController

  before_filter :authenticate_user!
  respond_to :html

  # GET /subscriptions
  def index
    @subscriptions = Subscription.all
    respond_with(@subscriptions)
  end

  # GET /subscriptions/
  def show
    @subscription = Subscription.find(params[:id])
    respond_with(@subscription)
  end

  # GET /subscriptions/new
  def new
    @subscription = Subscription.new
    respond_with(@subscription)
  end

  # GET /subscriptions/1/edit
  def edit
    @subscription = Subscription.find(params[:id])
    respond_with(@subscription)
  end

  # POST /subscriptions
  def create
    @subscription = Subscription.new(params[:subscription])
    
    if @subscription.save
      flash[:notice] = 'Subscription was successfully created.'
    end

    respond_with(@subscription)
  end

  # PUT /subscriptions/1
  def update
    @subscription = Subscription.find(params[:id])

    if @subscription.update_attributes(params[:subscription])
      flash[:notice] = 'Subscription was successfully updated.'
    end
    
    respond_with(@subscription)
  end

  # DELETE /subscriptions/1
  def destroy
    @subscription = Subscription.find(params[:id])
    @subscription.destroy
    respond_with(@subscription)
  end
end

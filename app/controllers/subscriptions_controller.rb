class SubscriptionsController < ApplicationController

  before_filter :authenticate_user!
  respond_to :html

  # GET /subscriptions/new
  def new
    @subscription = Subscription.new
    respond_with(@subscription)
  end

  # POST /events
  def create
    @subscription = Subscription.new(params[:subscription])
    
    if @subscription.save  
      flash[:notice] = "Subscription was successfully created."  
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

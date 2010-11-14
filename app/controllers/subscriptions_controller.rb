class SubscriptionsController < ApplicationController

  respond_to :js

  def index
    @event_id = params[:event_id]
    @event = Event.where(:id => @event_id).first
  
    @subscriptions = []
    @subscriptions = @event.subscriptions if @event != nil
    respond_with @subscriptions
  end
  
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

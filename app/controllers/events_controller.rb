class EventsController < ApplicationController

  before_filter :authenticate_person!
  respond_to :html

  # GET /events
  def index
    @events = Event.all
    respond_with @events
  end

  # GET /events/1
  def show
    @event = Event.find(params[:id])
    respond_with @event
  end
  
  # POST /events/1/subscribe
  def subscribe
    @event = Event.find(params[:id])
    current_person.events << @event
    
    redirect_to :action => 'index'
  end

  # GET /events/new
  def new
    @event = Event.new
    respond_with @event
  end

  # GET /events/1/edit
  def edit
    @event = Event.find(params[:id])
    respond_with @event
  end

  # POST /events
  def create
    @event = Event.new(params[:event])
    
    if @event.save  
      flash[:notice] = "Event was successfully created."  
    end
    
    respond_with(@event)  
  end

  # PUT /events/1
  def update
    @event = Event.find(params[:id])
    
    if @event.update_attributes(params[:event])
      flash[:notice] = 'Event was successfully updated.'
    end
    
    respond_with(@event)
  end

  # POST /events/1/subscribe
  def subscribe
    @event = Event.find(params[:id])
    current_person.events << @event
    
    redirect_to :action => 'index'
  end

  # POST /events/1/unsubscribe
  def unsubscribe
    @event = Event.find(params[:id])
    current_person.events.delete(@event)
    
    redirect_to :action => 'index'
  end
  
  # DELETE /events/1
  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    
    flash[:notice] = "Successfully destroyed event."  
    respond_with(@event)
  end
end

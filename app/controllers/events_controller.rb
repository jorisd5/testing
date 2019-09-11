class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)

    if @event.save
      redirect_to event_path(@event)
    else
      render :new
    end
  end

  def show
  end

  private

  def event_params
    params.require(:event).permit(:name, :start_date, :end_date, :address)
  end
end

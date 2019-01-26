class EventsController < ApplicationController
  before_action :set_event, only: [:show]
  
  def index
    @events = Event.all
  end

  def new
  end

  def create
  end
  
  def show
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end
end

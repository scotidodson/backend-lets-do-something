class Api::V1::EventsController < ApplicationController
  before_action :find_event, only: [:update, :destroy]

  def index
    @events = Event.all
    render json: @events
  end

  def new

  end

  def create
    @event = Event.create(event_params)
    render json: @event, status: :accepted
  end

  def update
    @event.update(event_params)
    if @event.save
      render json: @event, status: :accepted
    else
      render json: { errors: @event.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    @event.destroy
    render json: @event, status: :accepted
  end

  private

  def event_params
    params.require(:event).permit(:date, :option1, :option2, :option3, :user_id, :past, :time, :rating, :winner)
  end

  def find_event
    @event = Event.find_by(id: params[:id])
  end
end

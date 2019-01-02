class Api::V1::GuestsController < ApplicationController
  before_action :find_guest, only: [:update, :destroy]

  def index
    @guests = Guest.all
    render json: @guests
  end

  def new

  end

  def create
    @guest = Guest.create(guest_params)
    render json: @guest, status: :accepted
  end

  def update
    @guest.update(guest_params)
    if @guest.save
      render json: @guest, status: :accepted
    else
      render json: { errors: @guest.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    @guest.destroy
    render json: @guest, status: :accepted
  end

  private

  def guest_params
    params.require(:guest).permit(:user_id, :event_id, :host, :voted, :rsvp)
  end

  def find_guest
    @guest = Guest.find_by(id: params[:id])
  end
end

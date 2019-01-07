class Api::V1::OptionsController < ApplicationController
  before_action :find_option, only: [:update, :destroy]

  def index
    @options = Option.all
    render json: @options
  end

  def new

  end

  def create
    @option = Option.create(option_params)
    render json: @option, status: :accepted
  end

  def update
    @option.update(option_params)
    if @option.save
      render json: @option, status: :accepted
    else
      render json: { errors: @option.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    @option.destroy
    render json: @option, status: :accepted
  end

  private

  def option_params
    params.require(:option).permit(:idea_id, :event_id, :guest_id, :votes)
  end

  def find_option
    @option = Option.find_by(id: params[:id])
  end
end

class Api::V1::VotesController < ApplicationController
  before_action :find_vote, only: [:update, :destroy]

  def index
    @votes = Vote.all
    render json: @votes
  end

  def new

  end

  def create
    @vote = Vote.create(vote_params)
    render json: @vote, status: :accepted
  end

  def update
    @vote.update(vote_params)
    if @vote.save
      render json: @vote, status: :accepted
    else
      render json: { errors: @vote.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    @vote.destroy
    render json: @vote, status: :accepted
  end

  private

  def vote_params
    params.require(:vote).permit(:guest_id, :option_id)
  end

  def find_vote
    @vote = Vote.find_by(id: params[:id])
  end
end

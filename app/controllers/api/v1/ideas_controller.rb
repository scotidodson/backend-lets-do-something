class Api::V1::IdeasController < ApplicationController
  before_action :find_idea, only: [:update, :destroy]

  def index
    @ideas = Idea.all
    render json: @ideas
  end

  def new

  end

  def create
    @idea = Idea.create(idea_params)
    render json: @idea, status: :accepted
  end

  def update
    @idea.update(idea_params)
    if @idea.save
      render json: @idea, status: :accepted
    else
      render json: { errors: @idea.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    @idea.destroy
    render json: @idea, status: :accepted
  end

  private

  def idea_params
    params.require(:idea).permit(:title, :street, :city, :state, :zip, :neighborhood, :category, :details, :winter, :spring, :summer, :fall, :price_range, :duration, :website, :expiration, :expiration_date, :private, :submitted_by) 
  end

  def find_idea
    @idea = Idea.find_by(id: params[:id])
  end
end

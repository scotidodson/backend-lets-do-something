class Api::V1::FriendshipsController < ApplicationController
  before_action :find_friendship, only: [:update, :destroy]

  def index
    @friendships =  Friendship.all
    render json: @friendships
  end

  def new

  end

  def create
    @friendships = []
    Friendship.create(user_id: params[:user_id], friend_id: params[:friend_id])
    # Friendship.create(user_id: params[:friend_id], friend_id: params[:user_id])
    render json: @friendship, status: :accepted
  end

  def update
    @friendship.update(friendship_params)
    if @friendship.save
      render json: @friendship, status: :accepted
    else
      render json: { errors: @friendship.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    @friendship.destroy 
    render json: @friendship, status: :accepted
  end

  private

  def friendship_params
    params.require(:friendship).permit(:user_id, :friend_id)
  end

  def find_friendship
    @friendship =  Friendship.find_by(id: params[:id])
  end
end

class Api::V1::BoardsController < ApplicationController
  before_action :find_board, only: [:update, :destroy]

  def index
    @boards = Board.all
    render json: @boards
  end

  def new

  end

  def create
    @board = Board.create(board_params)
    render json: @board, status: :accepted
  end

  def update
    @board.update(board_params)
    if @board.save
      render json: @board, status: :accepted
    else
      render json: { errors: @board.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    @board.destroy
    render json: @board, status: :accepted
  end

  private

  def board_params
    params.require(:board).permit(:user_id, :idea_id, :archive, :experience_count)
  end

  def find_board
    @board = Board.find_by(id: params[:id])
  end
end

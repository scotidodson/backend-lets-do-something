class Api::V1::UsersController < ApplicationController
  before_action :find_user, only: [:update, :destroy]

  def index
    @users = User.all
    render json: @users
  end

  def new

  end

  def create
    @user = User.create(user_params)
    render json: @user, status: :accepted
  end

  def update
    @user.update(user_params)
    if @user.save
      render json: @user, status: :accepted
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    @user.destroy
    render json: @user, status: :accepted
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :username, :password, :phone, :email, :birthday, :gender, :default_city, :bio, :app_member, :img_url)
  end

  def find_user
    @user = User.find_by(id: params[:id])
  end
end

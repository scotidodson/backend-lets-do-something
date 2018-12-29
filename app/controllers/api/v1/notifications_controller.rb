class Api::V1::NotificationsController < ApplicationController
  before_action :find_notification, only: [:update, :destroy]

  def index
    @notifications = Notification.all
    render json: @notifications
  end

  def new

  end

  def create
    @notification = Notification.create(notification_params)
    render json: @notification, status: :accepted
  end

  def update
    @notification.update(notification_params)
    if @notification.save
      render json: @notification, status: :accepted
    else
      render json: { errors: @notification.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    @notification.destroy
    render json: @notification, status: :accepted
  end

  private            

  def notification_params
    params.require(:notification).permit(:user_id, :event_id, :message, :seen)
  end

  def find_notification
    @notification = Notification.find_by(id: params[:id])
  end
end

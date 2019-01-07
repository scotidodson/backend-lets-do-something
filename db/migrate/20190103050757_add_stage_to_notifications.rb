class AddStageToNotifications < ActiveRecord::Migration[5.2]
  def change
    add_column :notifications, :stage, :string
  end
end

class CreateNotifications < ActiveRecord::Migration[5.2]
  def change
    create_table :notifications do |t|
      t.integer :user_id
      t.integer :event_id
      t.string :message

      t.timestamps
    end
  end
end

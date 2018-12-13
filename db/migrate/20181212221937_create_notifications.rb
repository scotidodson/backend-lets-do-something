class CreateNotifications < ActiveRecord::Migration[5.2]
  def change
    create_table :notifications do |t|
      t.integer :user_id, foreign_key: true
      t.integer :event_id, foreign_key: true
      t.string :message

      t.timestamps
    end
    add_index :notifications, [:user_id, :event_id]
  end
end

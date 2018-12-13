class CreateGuests < ActiveRecord::Migration[5.2]
  def change
    create_table :guests do |t|
      t.integer :user_id
      t.integer :event_id
      t.integer :rsvp

      t.timestamps
    end
  end
end

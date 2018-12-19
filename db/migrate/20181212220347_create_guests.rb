class CreateGuests < ActiveRecord::Migration[5.2]
  def change
    create_table :guests do |t|
      t.integer :user_id, foreign_key: true
      t.integer :event_id, foreign_key: true
      t.string :rsvp
      t.boolean :host
      t.boolean :voted

      t.timestamps
    end
    add_index :guests, [:user_id, :event_id]
  end
end

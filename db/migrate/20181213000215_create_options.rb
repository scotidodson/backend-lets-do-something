class CreateOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :options do |t|
      t.integer :guest_id
      t.integer :event_id
      t.integer :idea_id
      t.integer :vote

      t.timestamps
    end
  end
end

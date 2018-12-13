class CreateOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :options do |t|
      t.integer :event_id
      t.integer :idea_id

      t.timestamps
    end
    add_index :options, [:event_id, :idea_id]
  end
end

class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.date :date
      t.boolean :past
      t.time :time
      t.integer :rating
      t.integer :winner

      t.timestamps
    end
  end
end

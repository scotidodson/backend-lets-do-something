class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.integer :year
      t.integer :month
      t.integer :day
      t.integer :hour
      t.integer :minute
      t.boolean :am
      t.boolean :past
      t.integer :rating
      t.integer :winner

      t.timestamps
    end
  end
end

class CreateIdeas < ActiveRecord::Migration[5.2]
  def change
    create_table :ideas do |t|
      t.string :title
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.string :neighborhood
      t.string :category
      t.string :details
      t.boolean :winter
      t.boolean :summer
      t.boolean :spring
      t.boolean :fall
      t.integer :price_range
      t.string :duration
      t.string :website
      t.boolean :expiration
      t.date :expiration_date
      t.boolean :private
      t.integer :submitted_by

      t.timestamps
    end
  end
end

class CreateVotes < ActiveRecord::Migration[5.2]
  def change
    create_table :votes do |t|
      t.integer :option_id
      t.integer :guest_id
      t.integer :votes

      t.timestamps
    end
  end
end

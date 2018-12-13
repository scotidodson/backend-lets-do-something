class CreateUserIdeas < ActiveRecord::Migration[5.2]
  def change
    create_table :user_ideas do |t|
      t.integer :idea_id
      t.integer :user_id
      t.boolean :archive
      t.integer :experience_count

      t.timestamps
    end
  end
end

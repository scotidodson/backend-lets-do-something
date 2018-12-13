class CreateUserIdeas < ActiveRecord::Migration[5.2]
  def change
    create_table :user_ideas do |t|
      t.integer :idea_id, foreign_key: true
      t.integer :user_id, foreign_key: true
      t.boolean :archive
      t.integer :experience_count

      t.timestamps
    end
    add_index :user_ideas, [:user_id, :idea_id]
  end
end

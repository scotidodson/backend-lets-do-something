class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :password
      t.string :phone
      t.string :email
      t.date :birthday
      t.string :gender
      t.string :default_city
      t.string :bio
      t.boolean :app_member
      t.string :img_url

      t.timestamps
    end
  end
end

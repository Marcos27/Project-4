class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.text :picture_url
      t.string :password

      t.timestamps null: false
    end
  end
end
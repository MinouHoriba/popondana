class CreateUser < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :icon_url, default: "", null: false
      t.string :uid, null: false
      t.string :email, null: false
      t.string :world_name, default: "", null: false
      
      t.timestamps
    end
    add_index :users, :uid, unique: true
    add_index :users, :email, unique: true
  end
end

class AddIndexToUsername < ActiveRecord::Migration
  def change
    add_index :users, :name, unique: true
    add_column :users, :password_digest, :string
    remove_column :users, :password, :string
  end
end

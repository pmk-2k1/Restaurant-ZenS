class AddInfoToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :fullname, :string
    add_column :users, :username, :string
    add_column :users, :address, :string
  end
end

class AddRoleToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :role, :integer, default: 0
    add_column :users, :gender, :integer, default: 0
    add_column :users, :day_of_birth, :datetime
  end
end

class ChangeUsersRoleType < ActiveRecord::Migration[5.0]

  def up
    remove_column :users, :role
    add_column :users, :role, :integer, default: 0
  end

  def down
    remove_column :users, :role
    add_column :users, :role, :string, default: 'user'
  end
end

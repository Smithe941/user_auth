class ChangeCommentsTable < ActiveRecord::Migration[5.0]
  def change
    add_reference :comments, :user, foreign_key: true
    remove_column :comments, :name
  end
end


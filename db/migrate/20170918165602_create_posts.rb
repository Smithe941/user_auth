class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.date :published_at
      t.belongs_to :user
      t.timestamps
    end
  end
end

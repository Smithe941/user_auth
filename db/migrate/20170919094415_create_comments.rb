class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string      :body
      t.date        :published_at
      t.belongs_to  :user
      t.belongs_to  :post
      t.timestamps
    end
  end
end

class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  scope :reversed, -> { order('created_at DESC') }
  validates_presence_of :title, :body
  validates_uniqueness_of :title
end

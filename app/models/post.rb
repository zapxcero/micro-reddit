class Post < ApplicationRecord
  validates :title, :body, presence: true
  validates :title, length: {in: 10..100}
  validates :body, length: {in: 1...200}

  belongs_to :user
  has_many :comments
end

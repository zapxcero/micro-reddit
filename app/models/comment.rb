class Comment < ApplicationRecord
  validates :commenter, :body, presence: true
  validates :body, length: {min: 1}
  belongs_to :user
  belongs_to :post
end

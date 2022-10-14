class User < ApplicationRecord
  validates :username, :password, :email, presence: true
  validates :username, :email, uniqueness: true
  validates :username, length: {in: 6...14}

  has_many :comments
  has_many :posts
end

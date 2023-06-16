class User < ApplicationRecord
  has_many :posts

  validates :username, presence: true, length: {in: 3..15}, uniqueness: true
  validates :email, presence: true, uniqueness: true
end

class User < ActiveRecord::Base
  validates :username, presence: true
  validates :password_hash, presence: true

  has_many :posts
  has_many :comments
  has_many :votes
  has_many :answers
end

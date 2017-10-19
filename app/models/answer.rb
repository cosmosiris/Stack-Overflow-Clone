class Answer < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :user
  belongs_to :post

  has_many :comments, as: commentable
  has_many :votes, as: voteable
end

require 'bcrypt'

class User < ActiveRecord::Base

  include BCrypt

  validates :username, presence: true
  validates :password_hash, presence: true

  has_many :posts
  has_many :comments
  has_many :votes
  has_many :answers

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @plain_text_password = new_password
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def authenticate(password_to_check)
    if self.password == password_to_check
      true
    end
  end

  private
  def presence_of_password
    if @plain_text_password == ""
      errors.add(:password, "can't be empty")
    end
  end

end

class User < ApplicationRecord
  has_many :posts
  has_many :comments

  validates :name, length: { minimum: 3, maximum: 16 }, presence: true
  validates :password, length: { minimum: 8, maximum: 30 }, presence: true
  validates :email, presence: true
end

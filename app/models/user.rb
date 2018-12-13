
class User < ApplicationRecord
  has_many :ideas, through: :boards
  has_many :boards

  has_many :notifications
  has_many :events

  has_many :guests
  has_many :events, through: :guests
  
  has_many :friendships, dependent: :destroy
  has_many :friends, through: :friendships

end

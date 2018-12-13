class Idea < ApplicationRecord
  has_many :options
  has_many :guests, through: :options
  has_many :users, through: :guests
  has_many :events, through: :options

  has_many :user_ideas
  has_many :users, through: :user_ideas
end

class Idea < ApplicationRecord
  belongs_to :option
  has_many :events, through: :options

  has_many :user_ideas
  has_many :users, through: :user_ideas
end

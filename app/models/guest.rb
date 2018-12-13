class Guest < ApplicationRecord
  belongs_to :user
  belongs_to :event
  has_many :votes

  has_many :options, through: :votes
  has_many :ideas, through: :options

end

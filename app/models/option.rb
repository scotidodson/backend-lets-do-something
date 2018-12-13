class Option < ApplicationRecord
  has_one :idea
  belongs_to :event
  has_many :votes
  has_many :guests, through: :votes

end

class Guest < ApplicationRecord
  belongs_to :user
  belongs_to :event

  has_many :options
  has_many :events, through: :options
  has_many :ideas, through: :options

end

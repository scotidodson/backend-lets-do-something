class Event < ApplicationRecord
  # belongs_to :user

  has_many :options
  has_many :guests, through: :options
  has_many :ideas, through: :options

end

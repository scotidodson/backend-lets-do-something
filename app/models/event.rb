class Event < ApplicationRecord

  has_many :options
  has_many :ideas, through: :options
  has_many :guests
  has_many :users, through: :guests

end

class Idea < ApplicationRecord
  has_many :options
  has_many :boards
  has_many :users, through: :boards
end

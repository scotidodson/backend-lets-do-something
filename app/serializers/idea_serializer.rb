class IdeaSerializer < ActiveModel::Serializer
  attributes :id, :title, :street, :city, :state, :zip, :neighborhood, :category, :details, :winter, :spring, :summer, :fall, :price_range, :duration, :website, :expiration, :expiration_date, :private, :submitted_by
  # 
  # has_many :options
  # has_many :guests, through: :options
  # has_many :users, through: :guests
  #
  # has_many :user_ideas
  # has_many :users, through: :user_ideas
end

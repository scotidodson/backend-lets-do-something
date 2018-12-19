class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :username, :password, :phone, :email, :birthday, :gender, :default_city, :bio, :app_member, :img_url

  has_many :friends, through: :friendships
  has_many :notifications

  has_many :events, through: :guests
  has_many :ideas, through: :user_ideas
  has_many :user_ideas

  class IdeaSerializer < ActiveModel::Serializer
    attributes :id, :title, :street, :city, :state, :zip, :neighborhood, :category, :details, :winter, :spring, :summer, :fall, :price_range, :duration, :website, :expiration, :expiration_date, :private, :submitted_by

  end

  class EventSerializer < ActiveModel::Serializer
    attributes :id, :date, :past, :time, :rating, :winner
    has_many :guests

  end
  # class EventSerializer < ActiveModel::Serializer
  #   attributes :id, :date, :past, :time, :rating, :winner
  #
  #   # has_many :options
  #   # has_many :guests, through: :options
  #   # has_many :ideas, through: :options
  #
  # end

end

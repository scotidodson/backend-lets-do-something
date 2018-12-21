class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :username, :password, :phone, :email, :birthday, :gender, :default_city, :bio, :app_member, :img_url

  has_many :friendships
  has_many :notifications
  has_many :events, through: :guests
  has_many :user_ideas

  class EventSerializer < ActiveModel::Serializer
    attributes :id, :date, :past, :time, :rating, :winner, :options, :guests, :ideas, :users
    has_many :guests
  end

  class UserIdeaSerializer < ActiveModel::Serializer
    attributes :id, :idea
    belongs_to :idea
    belongs_to :user
  end

  class FriendshipSerializer < ActiveModel::Serializer
    attributes :id, :friend
  end

end

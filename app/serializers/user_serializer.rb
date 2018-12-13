class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :username, :password, :phone, :email, :birthday, :gender, :default_city, :bio, :app_member, :img_url

  has_many :friends, through: :friendships
  has_many :notifications



  # has_many :events
  # has_many :guests
  has_many :events, through: :guests
  # has_many :user_ideas
  has_many :ideas, through: :user_ideas

  # has_many :friendships, dependent: :destroy

  # class UserIdeasSerializer < ActiveModel::Serializer
  #   attributes :id, :idea_id, :user_id
  #   belongs_to :user
  #   belongs_to :idea
  #
  # end

  class IdeaSerializer < ActiveModel::Serializer
    attributes :id, :title

  end

  # class GuestSerializer < ActiveModel::Serializer
  #   attributes :id, :user_id, :event_id, :rsvp, :host
  #   belongs_to :event
  #
  #
  #
  # end

  class EventSerializer < ActiveModel::Serializer
    attributes :id, :winner
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

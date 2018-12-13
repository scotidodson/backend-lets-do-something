class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :username, :password, :phone, :email, :birthday, :gender, :default_city, :bio, :app_member, :img_url

  has_many :user_ideas
  # has_many :ideas, through: :boards
  #
  has_many :notifications
  # has_many :events
  #
  # has_many :guests
  # has_many :events, through: :guests

  has_many :friends, through: :friendships


end

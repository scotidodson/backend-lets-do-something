class EventSerializer < ActiveModel::Serializer
  attributes :id, :date, :past, :time, :rating, :winner
  has_many :options
  has_many :guests
  # has_many :ideas



  class OptionSerializer < ActiveModel::Serializer
    attributes :id, :event_id, :idea_id, :votes, :idea
    has_one :idea
    has_one :event

  end

  # class IdeaSerializer < ActiveModel::Serializer
  #   attributes :id, :title
  #   has_many :options
  #   has_many :events, through: :options
  #
  # end

  class GuestSerializer < ActiveModel::Serializer
    attributes :id, :user, :rsvp, :host, :voted
  end

end

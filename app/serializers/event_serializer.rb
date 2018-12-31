class EventSerializer < ActiveModel::Serializer
  attributes :id, :year, :month, :day, :past, :hour, :minute, :am, :rating, :winner
  has_many :options
  has_many :guests

  class OptionSerializer < ActiveModel::Serializer
    attributes :id, :event_id, :idea_id, :votes, :idea
    has_one :idea
    has_one :event
  end

  class GuestSerializer < ActiveModel::Serializer
    attributes :id, :user, :rsvp, :host, :voted
  end

end

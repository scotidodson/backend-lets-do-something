class EventSerializer < ActiveModel::Serializer
  attributes :id, :date, :past, :time, :rating, :winner

  # has_many :options
  has_many :ideas, through: :options
  # has_many :guests
  has_many :users, through: :guests
  # has_many :votes, through: :guests

  class OptionSerializer < ActiveModel::Serializer
    attributes :id
    belongs_to :idea
    has_many :votes
  end


  class IdeaSerializer < ActiveModel::Serializer
    attributes :id, :title
    has_many :options
  end


  class GuestSerializer < ActiveModel::Serializer
    attributes :id
    belongs_to :event
    belongs_to :user
    has_many :votes

  end

  class VoteSerializer < ActiveModel::Serializer
    attributes :id
    belongs_to :option
    belongs_to :guest

  end

end

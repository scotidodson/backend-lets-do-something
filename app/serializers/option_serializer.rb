
class OptionSerializer < ActiveModel::Serializer
  attributes :id, :event_id, :idea_id, :votes
  belongs_to :idea
  belongs_to :event

end

class EventSerializer < ActiveModel::Serializer
  attributes :id, :date, :past, :time, :rating, :winner

  
end

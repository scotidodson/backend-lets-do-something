class IdeaSerializer < ActiveModel::Serializer
  attributes :id, :title, :street, :city, :state, :zip, :neighborhood, :category, :details, :winter, :spring, :summer, :fall, :price_range, :duration, :website, :expiration, :expiration_date, :private, :submitted_by

end

class UserIdeaSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :idea_id, :archive, :experience_count

  belongs_to :user
  belongs_to :idea
end


class Friendship < ApplicationRecord
    belongs_to :user
    belongs_to :friend, class_name: "User"

  # def self.create_reciprocal_for_ids(user_id, friend_id)
  #
  # end

end

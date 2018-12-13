
class Friendship < ApplicationRecord
    belongs_to :user
    belongs_to :friend, class_name: "User"

  # def self.create_reciprocal_for_ids(user_id, friend_id)
  #
  # end

  def self.destroy_reciprocal_for_ids(user_id, friend_id)
    friendship1 = Friendship.find_by(user_id: user_id, friend_id: friend_id)
    friendship2 = Friendship.find_by(user_id: friend_id, friend_id: user_id)
    friendship1.destroy
    friendship2.destroy
  end

end

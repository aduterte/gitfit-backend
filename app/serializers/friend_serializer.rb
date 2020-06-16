class FriendSerializer < ActiveModel::Serializer
  attributes :id, :follower_id, :follow_id
end

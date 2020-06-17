class UnlockSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :achievement_id
end

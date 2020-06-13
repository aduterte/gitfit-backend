class WeightSerializer < ActiveModel::Serializer
  attributes :id, :lbs, :kg, :user_id
end

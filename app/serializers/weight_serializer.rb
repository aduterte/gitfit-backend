class WeightSerializer < ActiveModel::Serializer
  attributes :id, :lbs, :kg, :user_id, :created_at
end

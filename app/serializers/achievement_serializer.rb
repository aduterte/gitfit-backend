class AchievementSerializer < ActiveModel::Serializer
  attributes :id, :code, :details, :name
end

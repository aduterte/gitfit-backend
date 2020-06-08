class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :picture, :user_id, :routine_id
end

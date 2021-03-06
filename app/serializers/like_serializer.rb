class LikeSerializer < ActiveModel::Serializer
  attributes :id, :post_id, :user
  belongs_to :post
  belongs_to :user

  def user
    {avatar: self.object.user.avatar, id: self.object.user.id}
  end
end

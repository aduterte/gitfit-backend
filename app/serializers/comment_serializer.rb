class CommentSerializer < ActiveModel::Serializer
  attributes :id, :post_id, :user, :content, :created_at
  belongs_to :user

  def user
    {avatar: self.object.user.avatar, id: self.object.user.id, name: self.object.user.name}
  end
end


  


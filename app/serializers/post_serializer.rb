class PostSerializer < ActiveModel::Serializer
  attributes :id, :content, :picture, :user, :created_at, :routine, :likes, :comments
  has_many :likes
  has_many :comments
  # def routine 
  #   ActiveModel::SerializableResource.new(object.routine,  each_serializer: RoutineSerializer)
  # end
  
  def user 
    user = {id: self.object.user.id, name: self.object.user.name, avatar: self.object.user.avatar}
    user
  end

  def routine 
    if self.object.routine
    routine = {name: self.object.routine.name, workouts: self.object.routine.workouts}
    return routine
    end
  end

  def likes 
    self.object.likes.map{|like|
      # byebug
    {id: like.id,
    post_id: like.post.id,
    user: {id: like.user.id, avatar: like.user.avatar}
    }
  }
  end

  def comments
    self.object.comments.map{|comment|
      {id: comment.id,
      post_id: comment.post_id,
      content: comment.content,
      created_at: comment.created_at,
      user: {avatar: comment.user.avatar, name: comment.user.name, id: comment.user.id}
      }
      
    }
    # self.object.comments.map{|comment|
    #   CommentSerializer.new(comment)
    #   }
  end
  
end

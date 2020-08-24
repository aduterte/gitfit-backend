class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :posts, :achievements, :goal_weight, :avatar, :zipcode, :age, :gender, :height, :trainer, :admin
  has_many :routines
  has_many :posts
  has_many :weights
  has_many :followed
  has_many :followers
  has_many :achievements

 
  def weights 
    self.object.weights.order("created_at ASC").map do |weight|
      {lbs: weight.lbs,
      kg: weight.kg,
    created_at: weight.created_at}
    end
  end

  def followed
    self.object.followed.map do |follow|
      # byebug
      {id: follow.follow.id,
      name: follow.follow.name,
      avatar: follow.follow.avatar,
      zipcode: follow.follow.zipcode,
      posts: follow.follow.posts.map{|post|
        {content: post.content,
        user:  
          {id: post.user.id,
          name: post.user.name,
          avatar: post.user.avatar},
        routine: post.routine,
        created_at: post.created_at}} 
      }
    end
  end

  def followers 
    self.object.followers.map do |follower|
      # byebug
      {id: follower.follower.id,
      avatar: follower.follower.avatar,
      name: follower.follower.name}
    end
  end

  def post
    PostSerializer.new(self.object.post)
  end

end


  
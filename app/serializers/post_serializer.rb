class PostSerializer < ActiveModel::Serializer
  attributes :id, :content, :picture, :user, :created_at, :routine
  # def routine 
  #   ActiveModel::SerializableResource.new(object.routine,  each_serializer: RoutineSerializer)
  # end
  
  def user 
    user = {name: self.object.user.name, avatar: self.object.user.avatar}
    user
  end

  def routine 
    if self.object.routine
    routine = {name: self.object.routine.name, workouts: self.object.routine.workouts}
    return routine
    end
  end
  
end

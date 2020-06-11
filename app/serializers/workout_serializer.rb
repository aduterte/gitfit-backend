class WorkoutSerializer < ActiveModel::Serializer
  attributes :id, :sets, :type_name, :name, :exercise
  belongs_to :routine
  
  

  # def user
  #   self.object.user.map do |user|
  #   {name: user.name, id: user.id}
  #   end
  # end
end

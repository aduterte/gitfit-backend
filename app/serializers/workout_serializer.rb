class WorkoutSerializer < ActiveModel::Serializer
  attributes :id, :exercise, :sets, :type_name, :name
  belongs_to :user
  

  # def user
  #   self.object.user.map do |user|
  #   {name: user.name, id: user.id}
  #   end
  # end
end

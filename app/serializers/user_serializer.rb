class UserSerializer < ActiveModel::Serializer
  attributes :id,:name, :email, :avatar, :zipcode, :age, :gender, :height, :trainer, :admin, :routines, :workouts

  def routines 
    self.object.routines.map do |routine|
      {id: routine.id,
      name: routine.name}
    end
  end

  # def workouts 
  #   self.object.workouts.map do |workout|
  #     {id: workout.id
  #     }
  #   end
  # end
end


  
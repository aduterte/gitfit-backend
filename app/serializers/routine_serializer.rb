class RoutineSerializer < ActiveModel::Serializer
  attributes :id, :name, :workouts

  def workouts 
    self.object.workouts.map do |workout|
      {
      name: workout.name,
      exercise: workout.exercise,
      sets: workout.sets,
      type_name: workout.type_name
    }
    end
  end
end

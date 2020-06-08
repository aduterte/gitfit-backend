class RoutineSerializer < ActiveModel::Serializer
  attributes :id, :name, :workouts

  def workouts 
    self.object.workouts.map do |workout|
      {
      name: workout.name,
      exercise_id: workout.exercise_id,
      sets: workout.sets,
      type_name: workout.type_name
    }
    end
  end
end

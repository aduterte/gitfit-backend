class AddSetsToWorkout < ActiveRecord::Migration[6.0]
  def change
    add_column :workouts, :sets, :json, array: true
  end
end

class AddTypeNameToWorkout < ActiveRecord::Migration[6.0]
  def change
    add_column :workouts, :type_name, :string
  end
end

class CreateWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :workouts do |t|
      t.integer :user_id
      t.integer :exercise_id

      t.timestamps
    end
  end
end
